class Genre < ApplicationRecord

  enum show_type: [:anime, :manga]
end
