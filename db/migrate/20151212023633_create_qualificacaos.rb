class CreateQualificacaos < ActiveRecord::Migration
  def change
    create_table :qualificacaos do |t|
      t.string :comentario
      t.integer :nota
      t.references :academia_treinamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
