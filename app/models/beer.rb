class Beer < ApplicationRecord
    validates :brand, :brew, :country, presence: true

end

