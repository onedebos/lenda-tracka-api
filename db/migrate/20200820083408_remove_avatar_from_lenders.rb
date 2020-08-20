class RemoveAvatarFromLenders < ActiveRecord::Migration[6.0]
  def change
    remove_column :lenders, :avatar, :string
    add_column :lenders, :avatar, :string, :null=>true
  end
end
