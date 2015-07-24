class AddDateToVmrequests < ActiveRecord::Migration
  def change
    add_column :vmrequests, :complete_date, :date
  end
end
