class Incident < ApplicationRecord
    belongs_to :incidentcategory
    has_many :incidentattachments
    has_many :incidentfollowups
    belongs_to :user

    scope :filter_by_start_date, ->(start_date) { where date_time: start_date }
    scope :filter_by_end_date, -> (end_date) { where date_time: end_date }


    def location
        [street, region].compact.join(', ')
    end

    def self.to_csv(options = {})
        CSV.generate(options) do |csv|
            csv << column_names
            all.each do |product|
                csv << product.attributes.values_at(*column_names)
            end
        end
    end
end

# def Incident::WithLatLng
#     after_validation :reverse_geocode
# end