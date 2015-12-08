class CreateQualificacaos < ActiveRecord::Migration
  def change
    create_table :qualificacaos do |t|
    	t.string :comentario
    	t.integer :nota

      t.timestamps null: false
    end
  end
end
