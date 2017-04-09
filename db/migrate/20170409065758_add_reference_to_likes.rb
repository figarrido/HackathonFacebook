class AddReferenceToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :liker, :integer
    add_column :likes, :liked, :integer
    add_column :likes, :game, :integer
  end
end
