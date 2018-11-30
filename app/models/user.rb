class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence:true
  validates :password_confirmation, presence:true

  # user has interested in event and want to share interest to other
  has_many :interests, dependent: :destroy
  has_many :interest_event, through: :interests, source: :event
  # user want to keep event in private
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_event, through: :bookmarks, source: :event
  # user will join event
  has_many :paticipants, dependent: :destroy
  has_many :paticipant_event, through: :paticipants, source: :event
  # user can follow other user
  has_many :active_reactions, foreign_key: 'follower_id', class_name: 'Reaction', dependent: :destroy
  has_many :following, through: :active_reactions, source: :followed
  # user can be followed by other user
  has_many :passive_reactions, foreign_key: 'followed_id', class_name: 'Reaction', dependent: :destroy
  has_many :followers, through: :passive_reactions, source: :follower
  # user has chat room to each user and can chat with
  has_many :chat_messages
  has_many :chat_room_users

  has_many :comments, dependent: :destroy
  has_many :comment_event, through: :comments, source: :event

  def follow!(other_user)
    active_reactions.create(followed_id: other_user.id)
  end

  def following?(other_user)
    active_reactions.find_by(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    active_reactions.find_by(followed_id: other_user.id).destroy
  end

  def matchers
    User.where(id: passive_reactions.select(:follower_id))
       .where(id: active_reactions.select(:followed_id))
  end

  mount_uploader :icon, ImgNameUploader
  enum sex: { 男: 0, 女: 1 }
end
