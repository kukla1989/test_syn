class Word < ApplicationRecord
  belongs_to :word_category

  validates :name, presence: true
  validates :definition, presence: true
  validates :word_category, presence: true
end
