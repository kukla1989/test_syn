class WordCategory < ApplicationRecord
  has_many :words

  validates :name, presence: true
end
