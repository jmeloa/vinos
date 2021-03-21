class ChangeCepasVinosTable < ActiveRecord::Migration[6.1]
  def change
    rename_table 'cepas_vinos', 'cepa_vinos'
    add_column :cepa_vinos, :id, :primary_key
    add_column :cepa_vinos, :available, :boolean, default: true
  end
end
