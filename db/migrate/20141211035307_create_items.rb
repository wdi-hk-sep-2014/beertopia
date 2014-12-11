class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :desciption
      t.string :category
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
