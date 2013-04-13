class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :note
      t.integer :user_id

      t.timestamps
    end
    add_index :notes, :title
    add_index :notes, :user_id
  end
end
