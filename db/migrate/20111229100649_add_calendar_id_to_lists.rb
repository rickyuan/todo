class AddCalendarIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :calendar_id, :integer
  end
end
