class Event < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :joins
  has_many :comments
  def self.has_created (event_id, user_id)
  	if self.find(event_id).user_id == user_id
  		return true
  	else
  		return false
  	end
  end

end
