class Word < ApplicationRecord
  validates :ru, :en, presence: true, length: { minimum: 3, maximum: 30 }
  validates :en, uniqueness: true
  validates :user_id, :presence => true

  belongs_to :user
end
