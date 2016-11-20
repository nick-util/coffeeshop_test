class CreateMachineModels < ActiveRecord::Migration
  def change
    create_table :machine_models do |t|
      t.references :machine_type, index: true
      t.boolean :water_line_comp
      t.string :sku
      t.string :img

      t.timestamps
    end
  end
end
