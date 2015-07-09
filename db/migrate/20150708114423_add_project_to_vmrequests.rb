class AddProjectToVmrequests < ActiveRecord::Migration
  def change
    add_column :vmrequests, :project, :string
  end
end
