require 'rails_helper'

feature 'gerenciar Usuario' do

  scenario 'incluir Usuario' do 

    visit new_usuario_path
    preencher_e_verificar_usuario
  end

  scenario 'alterar Usuario' do 

    usuario = FactoryGirl.create(:usuario)
    visit edit_usuario_path(usuario)
    preencher_e_verificar_usuario

  end

   scenario 'excluir Usuario' do 

    usuario = FactoryGirl.create(:usuario)
    visit usuarios_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_usuario

      fill_in 'Nome',     :with => "Daniel"
      fill_in 'Telefone',  :with => "22229999"
      fill_in 'Email',     :with => "daniel@gmail.com"
      fill_in 'Senha',     :with => "1234"


      click_button 'Salvar'

      expect(page).to have_content 'Nome: Daniel'
      expect(page).to have_content 'Telefone: 22229999'
      expect(page).to have_content 'Email: daniel@gmail.com'
      expect(page).to have_content 'Senha: 1234'


   end
end