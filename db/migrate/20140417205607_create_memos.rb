class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :link
      t.string :info
      t.integer :user_id

      t.timestamps
    end
  end
end
