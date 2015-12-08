class CreateAcademiaTreinamentos < ActiveRecord::Migration
  def change
    create_table :academia_treinamentos do |t|
      t.string :nome
      t.string :local

      t.timestamps null: false
    end
  end
end
