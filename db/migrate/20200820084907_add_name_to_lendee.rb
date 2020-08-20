class AddNameToLendee < ActiveRecord::Migration[6.0]
  def change
    add_column :lendees, :name, :string
  end
end
