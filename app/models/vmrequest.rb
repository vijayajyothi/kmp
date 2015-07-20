class Vmrequest < ActiveRecord::Base
  attr_accessible :project, :approval, :comments, :cpus, :environment, :name, :os_type, :ram, :requested_date, :requester, :space, :status

validates :name,:requester,:project,  presence:{message: "please fill mandatory fileds"}
validates :name, uniqueness: {message: "VM already existing" }
validates :requester, :format => {:with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i,
    :message => 'format is Invalid' }

#SEARCHABLES
searchable do
  text :name
  text :requester
end

end

