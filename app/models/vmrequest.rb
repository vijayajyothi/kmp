class Vmrequest < ActiveRecord::Base
  attr_accessible :approval, :comments, :cpus, :environment, :name, :os_type, :ram, :requested_date, :requester, :space, :status
end
