class AddnewShit < ActiveRecord::Migration
  def up
  	add_column :pictures, :link, :string

  end

  def down
  	
  end
end
