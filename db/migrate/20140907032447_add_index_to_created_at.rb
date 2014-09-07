class AddIndexToCreatedAt < ActiveRecord::Migration
  def change
    add_index :cards, :created_at
  end
end
