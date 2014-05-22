class Task < ActiveRecord::Base
  belongs_to :user

  validates :name, presence:true, length: { maximum: MAX_TEXT_FIELD_LENGTH }
end
