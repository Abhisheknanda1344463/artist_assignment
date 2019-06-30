class Painting < ActiveRecord::Base
  mount_uploader :picture, ImageUploader
  belongs_to :artist
end
