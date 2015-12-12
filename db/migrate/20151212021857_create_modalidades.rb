class CreateModalidades < ActiveRecord::Migration
  def change
    create_table :modalidades do |t|
      t.string :descricao
      t.references :professor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
