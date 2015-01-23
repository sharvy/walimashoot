class AddExternalImageUrlToPins < ActiveRecord::Migration
  def change
    add_column :pins, :external_image_url, :text
  end
end
