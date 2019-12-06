class Location < ApplicationRecord
  has_many :item, dependent: :destroy
end
