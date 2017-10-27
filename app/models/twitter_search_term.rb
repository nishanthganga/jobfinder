class TwitterSearchTerm < ApplicationRecord
  belongs_to :skill
  has_many :tweets
end
