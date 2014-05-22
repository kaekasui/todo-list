class Task < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :user

  validates :name, presence:true, length: { maximum: MAX_TEXT_FIELD_LENGTH }
end
