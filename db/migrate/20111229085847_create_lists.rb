class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :content

      t.timestamps
    end
  end
end
