class AddAttachmentDocumentToVmrequests < ActiveRecord::Migration
  def self.up
    change_table :vmrequests do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :vmrequests, :document
  end
end
