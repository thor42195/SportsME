class Event < ApplicationRecord
  validates :title, presence: true, length: { in: 1..50}
  validates :content, presence: true, length: { in: 1..500}
  validates :number, presence: true, length: { in: 1..100}
  #validates_time :starttime, :after => lambda { Date.current },
  #                              :after_message => 'は、現在よりも後に設定してください'
  #validates_time :endtime, :after => :starttime,
  #                              :after_message => 'は開始時間よりも後に設定してください'
  #validates_time :deadline, :before => :starttime,
  #                              :before_message => 'は開始時間よりも前に設定してください'
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
