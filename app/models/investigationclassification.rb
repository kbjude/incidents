class Investigationclassification < ApplicationRecord
  belongs_to :investigation
  belongs_to :subclassification
end
