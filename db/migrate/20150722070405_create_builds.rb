class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :name
      t.string :owner
      t.string :ticket_no
      t.string :cpu
      t.string :project

      t.timestamps
    end
  end
end
