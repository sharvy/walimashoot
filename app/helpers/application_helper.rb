module ApplicationHelper
  def image_url pin
    pin.image.url || pin.external_image_url
  end
end
