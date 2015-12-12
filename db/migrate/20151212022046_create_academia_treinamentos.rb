class CreateAcademiaTreinamentos < ActiveRecord::Migration
  def change
    create_table :academia_treinamentos do |t|
      t.string :nome
      t.string :endereco
      t.references :modalidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
