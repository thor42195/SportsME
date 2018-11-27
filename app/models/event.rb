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

  validates :title, presence:true
  validates :image, presence:true
  validates :content, length:{in: 1..500}, presence:true

  ## time validation
  validate :not_before_today
  validate :enddate_after_startdate
  validate :duedate_is_first

  def not_before_today
    errors.add(:startdate, 'は今日以降の日付を設定してください') if startdate.nil? || startdate < Date.today
  end

  def enddate_after_startdate
    errors.add(:enddate, 'は開始日よりも後の日程を設定してください') if enddate.nil? ||  enddate < startdate
  end

  def duedate_is_first
    errors.add(:duedate, 'は開始日よりも前に設定してください') if duedate.nil? || startdate && enddate < duedate
  end
end
