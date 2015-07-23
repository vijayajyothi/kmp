class AddOtherToBuild < ActiveRecord::Migration
  def change
    add_column :builds, :os_version, :string
    add_column :builds, :approval, :string
    add_column :builds, :comments, :string
    add_column :builds, :cpus, :string
    add_column :builds, :environment, :string
    add_column :builds, :os_type, :string
    add_column :builds, :ram, :string
    add_column :builds, :requested_date, :date
    add_column :builds, :requester, :string
    add_column :builds, :space, :string
    add_column :builds, :status, :string
  end
end
