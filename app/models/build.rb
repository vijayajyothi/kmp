class Build < ActiveRecord::Base
  attr_accessible :owner, :os_version,  :ticket_no, :project, :approval, :comments, :cpus, :environment, :name, :os_type, :ram, :requested_date, :requester, :space, :status
  searchable do 
  text :name
  text :requester
end
end
