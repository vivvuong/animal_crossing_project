class CreateVillagers < ActiveRecord::Migration[6.1]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :icon_image
      t.string :photo_image
      t.string :house_image
      t.references :animal, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.references :personality, null: false, foreign_key: true
      t.references :hobby, null: false, foreign_key: true
      t.string :birthday
      t.string :catchphrase
      t.string :favorite_song
      t.string :favorite_saying

      t.timestamps
    end
  end
end
