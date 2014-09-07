class DropLists < ActiveRecord::Migration
  def change
    drop_table :lists
    remove_column :cards, :list_id
  end
end
