require 'rails_helper'

feature 'gerenciar Academia' do

  scenario 'incluir Academia' do 

    visit new_academia_treinamento_path
    preencher_e_verificar_academia_treinamento
  end

  scenario 'alterar Academia' do 

    academia_treinamento = FactoryGirl.create(:academia_treinamento)
    visit edit_academia_treinamento_path(academia_treinamento)
    preencher_e_verificar_academia_treinamento

  end

   scenario 'excluir Academia' do 

    academia_treinamento = FactoryGirl.create(:academia_treinamento)
    visit academia_treinamentos_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_academia_treinamento

      fill_in 'Nome',     :with => "Corpus"
      fill_in 'Local',  :with => "Campos"


      click_button 'Salvar'

      expect(page).to have_content 'Nome: Corpus'
      expect(page).to have_content 'Local: Campos'


   end
end