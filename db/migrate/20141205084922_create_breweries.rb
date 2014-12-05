class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :description
      t.string :phone
      t.string :address
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
