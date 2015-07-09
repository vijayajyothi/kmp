class Vmrequest < ActiveRecord::Base
  attr_accessible :project, :approval, :comments, :cpus, :environment, :name, :os_type, :ram, :requested_date, :requester, :space, :status
#SEARCHABLES
searchable do
  text :name
end
end
