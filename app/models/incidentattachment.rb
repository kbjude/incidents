class Incidentattachment < ApplicationRecord
    belongs_to :incident
    has_attached_file :attachment,
    :url  => "/assets/attachment/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/attachment/:id/:style/:basename.:extension"

    #validates_attachment_content_type :attachment, :content_type => ["application/pdf","image"]
    do_not_validate_attachment_file_type :attachment

    def path 
        attachment.url
    end

    def as_json(options={})
        super(methods: :path)
    end
end
