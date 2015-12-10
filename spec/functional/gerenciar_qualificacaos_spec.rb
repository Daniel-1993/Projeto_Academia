require 'spec_helper'

feature 'gerenciar qualificacao' do

  before(:each) do
    @qualificacao = create(:usuario, nome: "Victor")

  end


  let(:dados) do {

    comentario: "boa",
    nota: 10,
    usuario: "Victor",
   }
  end

  scenario 'incluir qualificacao' do
    visit new_qualificacao_path
    preencher_qualificacao(dados)
    click_button 'Salvar'
    verificar_qualificacao(dados)

  end

  scenario 'alterar ' do

    qualificacao = FactoryGirl.create(:qualificacao, usuario: @qualificacao )

    visit edit_qualificacao_path(qualificacao)
    preencher_qualificacao(dados)
    click_button 'Salvar'
    verificar_qualificacao(dados)


  end

  scenario 'excluir qualificacao' do

    qualificacao = FactoryGirl.create(:qualificacao, usuario: @qualificacao)
    visit qualificacaos_path
    #save_and_open_page
    click_link 'Excluir'

  end

  def preencher_qualificacao(dados)

    fill_in 'Comentario',  with: dados[:comentario]
    fill_in 'Nota',  with: dados[:nota]
    select dados[:usuario], from: "Usuario"

  end

  def verificar_qualificacao(dados)

    page.should have_content "Comentario: #{dados[:comentario]}"
    page.should have_content "Nota: #{dados[:nota]}"
    page.should have_content "Usuario: #{dados[:nome]}"

  end

end