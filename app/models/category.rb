class Category < ActiveRecord::Base
  attr_accessible :name, :description
  
  validate :name, :presence => true, :length => { :maximum => 50} #, uniqueness => { :case_sensitive => false} 
end
