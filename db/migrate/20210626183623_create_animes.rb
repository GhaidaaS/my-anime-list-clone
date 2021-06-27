class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.integer :mal_id
      t.string :title
      t.string :url
      t.string :image_url
      t.string :synopsis
      t.integer :episodes
      t.string :score
      t.integer :status

      t.timestamps
    end
  end
end
