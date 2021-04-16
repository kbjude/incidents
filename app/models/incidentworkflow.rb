class Incidentworkflow < ApplicationRecord
  belongs_to :incident
  belongs_to :workflowtemplate
end
