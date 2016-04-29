class Event < ActiveRecord::Base
  belongs_to :user

  before_save :create_user

  validates :url, presence: true

  def create_user
    return if self.user.present?

    user = User.new
    user.save
    self.user = user
  end
end
