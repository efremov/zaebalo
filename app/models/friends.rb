class Friends < ActiveRecord::Base
  attr_accessible :friend_id, :integer, :user_id
  belongs_to :user, foreign_key: :user_id
end
