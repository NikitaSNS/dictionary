class Word < ApplicationRecord
  validates :ru, length: { minimum: 3 }
  validates :en, length: { minimum: 3 }
end
