class Pin < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :board
  extend FriendlyId
  friendly_id :name, use: :slugged
  paginates_per 8
  before_save :extract_url

  def repin_post(board_id)
    pin = Pin.new
    pin.name = self.name
    pin.board_id = board_id
    pin.image = self.image
    pin.save
  end

  def extract_url
    regular_expression = 'https:\/\/f.+.jpg'
    extracted_image_url = /#{regular_expression}/.match(self.external_image_url)
    self.external_image_url = extracted_image_url[0].sub('_s', '_b')
  end

end
