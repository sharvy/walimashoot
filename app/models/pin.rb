class Pin < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :board
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 20

end
