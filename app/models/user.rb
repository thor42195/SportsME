class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :interests, dependent: :destroy
  has_many :interest_event, through: :interests, source: :event

  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_event, through: :bookmarks, source: :event

  has_many :paticipants, dependent: :destroy
  has_many :paticipant_event, through: :paticipants, source: :event

  mount_uploader :icon, ImgNameUploader
  enum sex: { 男: 0, 女: 1 }
end
