class CreatePodTypes < ActiveRecord::Migration
  def change
    create_table :pod_types do |t|
      t.string :product_type

      t.timestamps
    end
  end
end
