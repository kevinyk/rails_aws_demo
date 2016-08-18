class Join < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  def self.has_joined (event_id, user_id)
  	if self.where(event_id: event_id, user_id: user_id).count == 1
		return true
	else
		return false 
	end
  end
  def self.users_joined (event_id)
  	self.joins(:user).where(event_id: event_id).select(:first_name, :last_name, "users.location as u_location", "users.state as u_state")
  end
end
