class Anime < ApplicationRecord
  has_many :genre, through: :anime_genres
  enum status: {
    finishedـairing: 1,
    currently_airing: 2,
    not_yet_aired: 3,
  }
end
