class TwitterSearchTerm < ApplicationRecord
  extend FriendlyId
  belongs_to :skill
  has_many :tweets

  friendly_id :term, use: :slugged
end
