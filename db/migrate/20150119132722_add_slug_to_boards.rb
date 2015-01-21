class AddSlugToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :slug, :string
    add_index :boards, :slug, unique: true
  end
end
