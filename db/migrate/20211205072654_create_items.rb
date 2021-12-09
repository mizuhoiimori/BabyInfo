class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :store
      t.float :evaluation
      t.text :body

      t.timestamps
    end
  end
end
