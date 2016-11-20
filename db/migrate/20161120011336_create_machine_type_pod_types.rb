class CreateMachineTypePodTypes < ActiveRecord::Migration
  def change
    create_table :machine_type_pod_types do |t|
      t.references :machine_type, index: true
      t.references :pod_type, index: true

      t.timestamps
    end
  end
end
