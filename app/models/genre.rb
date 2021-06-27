class Genre < ApplicationRecord
  has_many :anime, through: :anime_genres
  has_many :manga, through: :manga_genres
  enum show_type: [:anime, :manga]
end
