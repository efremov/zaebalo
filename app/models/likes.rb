class Likes < ActiveRecord::Base
  attr_accessible :human_id, :project_id
  belongs_to :user
end
