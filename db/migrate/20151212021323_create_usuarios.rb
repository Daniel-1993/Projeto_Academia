class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :senha

      t.timestamps null: false
    end
  end
end
