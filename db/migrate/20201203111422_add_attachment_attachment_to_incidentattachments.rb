class AddAttachmentAttachmentToIncidentattachments < ActiveRecord::Migration[6.0]
  def self.up
    change_table :incidentattachments do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :incidentattachments, :attachment
  end
end
