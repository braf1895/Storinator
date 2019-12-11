class Item < ApplicationRecord
  belongs_to :location, optional: true
end
