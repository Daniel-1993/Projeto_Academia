require 'rails_helper'

feature 'gerenciar Professor' do

  scenario 'incluir Professor' do 

    visit new_professor_path
    preencher_e_verificar_professor
  end

  scenario 'alterar Professor' do 

    professor = FactoryGirl.create(:professor)
    visit edit_professor_path(professor)
    preencher_e_verificar_professor

  end

   scenario 'excluir Professor' do 

    professor = FactoryGirl.create(:professor)
    visit professors_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_professor

      fill_in 'Nome',     :with => "Marcos"
      fill_in 'Telefone',  :with => "1234433"


      click_button 'Salvar'

      expect(page).to have_content 'Nome: Marcos'
      expect(page).to have_content 'Telefone: 1234433'


   end
end