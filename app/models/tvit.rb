class Tvit < ApplicationRecord
  validates_length_of :status, maximum: 140, minimum: 5
  belongs_to :user
end
