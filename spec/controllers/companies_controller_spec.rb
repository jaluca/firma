require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CompaniesController, "POST create" do 

  before :each do 
    @company = mock_model(Company)
  end
  
  it "should build a new company" do
    post :create, :company => {:name => "Katarynka", :boss => "Katarzyna Kowalska", :line_id => 1}
    @company.should_receive(:new).with({:name => "Katarynka", :boss => "Katarzyna Kowalska", :line_id => 1}) 

  end
    
  it "should save the company" 
  
end 
