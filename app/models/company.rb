class Company < ActiveRecord::Base
  attr_accessible :name, :address, :website, :pobox, :logo
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
