class RemoveLendeeFromLenders < ActiveRecord::Migration[6.0]
  def change
    remove_column :lenders, :lendee_id, :bigint
    add_reference :lenders, :lendee, null: true, foreign_key: true
  end
end
