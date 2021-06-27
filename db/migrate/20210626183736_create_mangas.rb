class CreateMangas < ActiveRecord::Migration[6.1]
  def change
    create_table :mangas do |t|
      t.integer :mal_id
      t.string :title
      t.string :url
      t.string :image_url
      t.string :synopsis
      t.integer :volumes
      t.integer :chapters
      t.string :score
      t.integer :status

      t.timestamps
    end
  end
end
