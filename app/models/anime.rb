class Anime < ApplicationRecord

  enum status: {
    finishedـairing: 1,
    currently_airing: 2,
    not_yet_aired: 3,
  }
end
