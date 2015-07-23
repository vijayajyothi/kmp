class Vmrequest < ActiveRecord::Base
  attr_accessible :owner, :os_version, :other, :ticket_no, :project, :approval, :comments, :cpus, :environment, :name, :os_type, :ram, :requested_date, :requester, :space, :status
 acts_as_xlsx

# validates :name,:requester,:project,  presence:{message: "please fill mandatory fileds"}
# validates :name, uniqueness: {message: "VM already existing" }
# validates :requester, :format => {:with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i,
#     :message => 'format is Invalid' }

#SEARCHABLES
searchable do 
  text :name
  text :requester
  text :ticket_no
  text :other
end

end

