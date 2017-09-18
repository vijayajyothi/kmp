class AddAttachmentToVmrequests < ActiveRecord::Migration
  def change
    add_column :vmrequests, :attachment, :string
  end
end
