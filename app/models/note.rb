class Note < ActiveRecord::Base
  attr_accessible :note, :title, :user_id
end
