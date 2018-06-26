class Event < ApplicationRecord
  has_one_attached :cover
  has_many_attached :banners
end
