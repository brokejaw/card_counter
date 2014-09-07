class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string "content"
      t.integer "list_id"
      t.integer "time_created"
      t.timestamps
    end
  end
end
