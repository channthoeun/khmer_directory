require 'spec_helper'

describe Category do
  #pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    @attr = { :name => "Example Cateogry", :description => "An example category"}
  end
  
  it "should create a new instance given valid attributes" do
    Category.create!(@attr)    
  end
  
  it "should require a name"
end