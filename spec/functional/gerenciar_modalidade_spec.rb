require 'rails_helper'

feature 'gerenciar modalidade' do

  scenario 'incluir modalidade' do 

    visit new_modalidade_path
    preencher_e_verificar_modalidade
  end

  scenario 'alterar modalidade' do 

    modalidade = FactoryGirl.create(:modalidade)
    visit edit_modalidade_path(modalidade)
    preencher_e_verificar_modalidade

  end

   scenario 'excluir modalidade' do 

    modalidade = FactoryGirl.create(:modalidade)
    visit modalidades_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_modalidade

      fill_in 'Descricao',     :with => "Luta"


      click_button 'Salvar'

      expect(page).to have_content 'Descricao: Luta'


   end
end