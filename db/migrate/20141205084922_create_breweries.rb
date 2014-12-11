class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.text   :description
      t.string :address
      t.string :phone
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
