class AddExtraToVmrequests < ActiveRecord::Migration
  def change
    add_column :vmrequests, :ticket_no, :string
    add_column :vmrequests, :os_version, :string
    add_column :vmrequests, :owner, :string
    add_column :vmrequests, :other, :string
  end
end
