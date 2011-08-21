class Location < ActiveRecord::Base
  attr_accessible :name
  validate :name, :presence => true, :length => { :maximum => 50}
end
