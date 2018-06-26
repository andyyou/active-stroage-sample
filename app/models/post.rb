class Post < ApplicationRecord
  has_one_attached :cover
  has_many_attached :images
end
