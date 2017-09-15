class AddAdvToVmrequests < ActiveRecord::Migration
  def change
    add_column :vmrequests, :adv, :string
  end
end
