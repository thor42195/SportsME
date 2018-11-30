class Organizer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  #validates :number, presence: true, format: { with: VALID_PHONE_REGEX }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy
  mount_uploader :icon, ImgNameUploader

  validates :name, presence:true
  validates :group, presence:true
  validates :sport, presence:true
  validates :number, presence:true
  validates :password, presence:true
  validates :password_confirmation, presence:true
  validates :introduction, presence:true
  validates :icon, presence:true
end
