class Artist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :profile_picture, ImageUploader
  devise :database_authenticatable, :registerable,
         :validatable
  has_many :paintings,dependent: :destroy

  accepts_nested_attributes_for :paintings
end
