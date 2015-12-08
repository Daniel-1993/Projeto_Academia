class AddColumnAcademiaIdToQualificacaos < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :academia_id, :integer
  end
end
