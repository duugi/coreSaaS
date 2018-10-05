class CreateAdminRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_regions do |t|
      t.string :region_name

      t.timestamps
    end
  end
end
