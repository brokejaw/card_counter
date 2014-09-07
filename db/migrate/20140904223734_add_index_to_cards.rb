class AddIndexToCards < ActiveRecord::Migration
  def change
    add_index :cards, :time_created
  end
end
