class Friends < ActiveRecord::Base
  attr_accessible :friend_id, :integer, :user_id
end
