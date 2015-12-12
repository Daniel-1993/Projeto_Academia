require 'spec_helper'

feature 'gerenciar qualificacao' do

  before(:each) do
    @academia_treinamento = create(:academia_treinamento, nome: "Corpus")

  end


  let(:dados) do {

    comentario: "boa",
    nota: "1",
    academia_treinamento: "Corpus",
   }
  end

  scenario 'incluir qualificacao' do
    visit new_qualificacao_path
    preencher_qualificacao(dados)
    click_button 'Salvar'
    verificar_qualificacao(dados)

  end

  scenario 'alterar qualificacao' do

    qualificacao = FactoryGirl.create(:qualificacao, academia_treinamento: @qualificacao )

    visit edit_qualificacao_path(qualificacao)
    preencher_qualificacao(dados)
    click_button 'Salvar'
    verificar_qualificacao(dados)


  end

  scenario 'excluir qualificacao' do

    qualificacao = FactoryGirl.create(:qualificacao, academia_treinamento: @qualificacao)
    visit qualificacaos_path
    #save_and_open_page
    click_link 'Excluir'

  end

  def preencher_qualificacao(dados)

    fill_in 'Comentario',  with: dados[:comentario]
    fill_in 'Nota',  with: dados[:nota]
    select dados[:nome], from: "Academia treinamento"

  end

  def verificar_qualificacao(dados)

    page.should have_content "Comentario: #{dados[:comentario]}"
    page.should have_content "Nota: #{dados[:nota]}"
    page.should have_content "Academia treinamento: #{dados[:nome]}"

  end

end