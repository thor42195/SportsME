class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # user has interested in event and want to share interest to other
  has_many :interests, dependent: :destroy
  has_many :interest_event, through: :interests, source: :event
  # user want to keep event in private
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_event, through: :bookmarks, source: :event
  # user will join event
  has_many :paticipants, dependent: :destroy
  has_many :paticipant_event, through: :paticipants, source: :event

  has_many :active_reactions,class_name:  "Reaction", foreign_key: "follower_id", dependent: :destroy
  has_many :following, through: :active_reactions

  has_many :passive_reactions, class_name: "Reaction", foreign_key: "following_id", dependent: :destroy
  has_many :followers, through: :passive_reactions, source: :follower

  def following?(other_user)
    following.include?(other_user)
  end

  def matchers
    User.where(id: passive_reactions.select(:follower_id))
     .where(id: active_reactions.select(:following_id))
  end

  mount_uploader :icon, ImgNameUploader
  enum sex: { 男: 0, 女: 1 }
end
