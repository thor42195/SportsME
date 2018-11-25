class Event < ApplicationRecord
  belongs_to :organizer

  has_many :interests, dependent: :destroy
  has_many :interest_users, through: :interests, source: :user

  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_users, through: :bookmarks, source: :user

  has_many :paticipants, dependent: :destroy
  has_many :paticipant_users, through: :paticipants, source: :user

  has_many :comments, dependent: :destroy

  mount_uploader :image, ImgNameUploader

  def self.ransackable_attributes auth_object = nil
    %w(title place)
  end

end
