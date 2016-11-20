class CreateMachineTypes < ActiveRecord::Migration
  def change
    create_table :machine_types do |t|
      t.string :product_type

      t.timestamps
    end
  end
end
