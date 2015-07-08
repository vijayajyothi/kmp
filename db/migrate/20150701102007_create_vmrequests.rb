class CreateVmrequests < ActiveRecord::Migration
  def change
    create_table :vmrequests do |t|
      t.string :name
      t.string :environment
      t.string :requester
      t.date :requested_date
      t.string :cpus
      t.string :ram
      t.string :space
      t.string :os_type
      t.string :approval
      t.string :comments
      t.string :status

      t.timestamps
    end
  end
end
