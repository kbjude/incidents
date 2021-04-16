class Incidentcategory < ApplicationRecord
    has_many :incidentsubcategories
    def as_json(options={})
        super(:except => [:created_at, :updated_at],include: [:incidentsubcategories])
    end
end
