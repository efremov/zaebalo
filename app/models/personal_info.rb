class PersonalInfo < ActiveRecord::Base
   attr_accessible :name, :surname, :age, :country, :about, :user_id, :image
   belongs_to :user
   validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},	 size: {less_than: 5.megabytes}
   belongs_to :user
   has_attached_file :image, styles: { medium: "320x240>"}
end
