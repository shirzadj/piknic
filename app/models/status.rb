class Status < ActiveRecord::Base
  attr_accessible :contenet, :user_id
  belongs_to :user
end
