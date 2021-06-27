class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.integer :mal_id
      t.integer :show_type
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
