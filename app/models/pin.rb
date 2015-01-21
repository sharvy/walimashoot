class Pin < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :board
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 8

  def repin_post(board_id)
    pin = Pin.new
    pin.name = self.name
    pin.board_id = board_id
    pin.image = self.image
    pin.save
  end

end
