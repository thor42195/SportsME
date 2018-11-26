class Chatmessage < ApplicationRecord
  belongs_to :chatuser
  belongs_to :user

  validates_presence_of :body, :chatuser_id, :user_id
  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
