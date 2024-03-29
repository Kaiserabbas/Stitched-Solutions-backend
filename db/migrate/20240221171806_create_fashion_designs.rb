class CreateFashionDesigns < ActiveRecord::Migration[7.1]
  def change
    create_table :fashion_designs do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
