class Picture < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :users
end
