class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.references :artist, index: true
      t.string :picture
      t.boolean :public

      t.timestamps null: false
    end
    add_foreign_key :paintings, :artists
  end
end
