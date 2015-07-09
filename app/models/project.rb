class Project < ActiveRecord::Base
  attr_accessible :name, :other, :team
#SEARCHABLES
searchable do
  text :name
end
end
