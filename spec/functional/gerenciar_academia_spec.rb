require 'spec_helper'

feature 'gerenciar academia_treinamento' do

  before(:each) do
    @modalidade = create(:modalidade, descricao: "Luta")

  end


  let(:dados) do {

    nome: "Corpus",
    endereco: "Mundo da lua",
    modalidade: "Luta",
   }
  end

  scenario 'incluir academia_treinamento' do
    visit new_academia_treinamento_path
    preencher_academia_treinamento(dados)
    click_button 'Salvar'
    verificar_academia_treinamento(dados)

  end

  scenario 'alterar academia_treinamento' do

    academia_treinamento = FactoryGirl.create(:academia_treinamento, modalidade: @academia_treinamento )

    visit edit_academia_treinamento_path(academia_treinamento)
    preencher_academia_treinamento(dados)
    click_button 'Salvar'
    verificar_academia_treinamento(dados)


  end

  scenario 'excluir academia_treinamento' do

    academia_treinamento = FactoryGirl.create(:academia_treinamento, modalidade: @academia_treinamento)
    visit academia_treinamentos_path
    #save_and_open_page
    click_link 'Excluir'

  end

  def preencher_academia_treinamento(dados)

    fill_in 'Nome',  with: dados[:nome]
    fill_in 'Endereco',  with: dados[:endereco]
    select dados[:descricao], from: "Modalidade"

  end

  def verificar_academia_treinamento(dados)

    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Endereco: #{dados[:endereco]}"
    page.should have_content "Modalidade: #{dados[:descricao]}"


  end

end