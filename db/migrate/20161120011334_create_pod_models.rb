class CreatePodModels < ActiveRecord::Migration
  def change
    create_table :pod_models do |t|
      t.references :pod_type, index: true
      t.references :flavor, index: true
      t.integer :pack_size
      t.string :sku
      t.string :img

      t.timestamps
    end
  end
end
