class AddReferenceToVmrequests < ActiveRecord::Migration
  def change
    add_column :vmrequests, :references, :string
    add_column :vmrequests, :prob_desc, :string
    add_column :vmrequests, :solution, :string
    add_column :vmrequests, :proposal, :string
  end
end
