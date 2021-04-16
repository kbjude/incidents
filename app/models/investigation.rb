class Investigation < ApplicationRecord
  belongs_to :incident
  belongs_to :user
  belongs_to :department
end
