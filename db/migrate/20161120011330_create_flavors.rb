class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :coffee_flavor

      t.timestamps
    end
  end
end
