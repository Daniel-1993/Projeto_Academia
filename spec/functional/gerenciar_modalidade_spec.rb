require 'spec_helper'

feature 'gerenciar modalidade' do

  before(:each) do
    @professor = create(:professor, nome: "Joao")

  end


  let(:dados) do {

    descricao: "Luta",
    professor: "Joao",
   }
  end

  scenario 'incluir modalidade' do
    visit new_modalidade_path
    preencher_modalidade(dados)
    click_button 'Salvar'
    verificar_modalidade(dados)

  end

  scenario 'alterar ' do

    modalidade = FactoryGirl.create(:modalidade, professor: @modalidade )

    visit edit_modalidade_path(modalidade)
    preencher_modalidade(dados)
    click_button 'Salvar'
    verificar_modalidade(dados)


  end

  scenario 'excluir modalidade' do

    modalidade = FactoryGirl.create(:modalidade, professor: @modalidade)
    visit modalidades_path
    #save_and_open_page
    click_link 'Excluir'

  end

  def preencher_modalidade(dados)

    fill_in 'Descricao',  with: dados[:descricao]
    select dados[:nome], from: "Professor"

  end

  def verificar_modalidade(dados)

    page.should have_content "Descricao: #{dados[:descricao]}"
    page.should have_content "Professor: #{dados[:nome]}"

  end

end