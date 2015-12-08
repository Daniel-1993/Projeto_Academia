class AddColumnUsuarioIdToQualificacaos < ActiveRecord::Migration
  def change
  	add_column :qualificacaos, :usuario_id, :integer
  end
end
