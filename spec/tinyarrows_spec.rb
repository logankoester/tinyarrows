require File.dirname(__FILE__) + '/spec_helper'

describe "Tinyarrow" do
	
	it "should default to http://tinyarro.ws if no target is provided" do
		Tinyarrow.new.target.should eql VALID_URI
	end
	
  it "should set the target URI" do
    tinyarrow = Tinyarrow.new(VALID_URI)
    tinyarrow.target.class.should eql URI::HTTP
    tinyarrow.target.should eql VALID_URI
  end
  
  it "should have a url (the arrow)" do
  	tinyarrow = Tinyarrow.new(VALID_URI)
    tinyarrow.url.class.should eql(String)
	end
 	
 	it "should update url if target is changed" do
		tinyarrow = Tinyarrow.new(VALID_URI)
		original_result = tinyarrow.url
		tinyarrow.target = 'http://tinyarro.ws/api-create.php'
		new_result = tinyarrow.url
		original_result.should_not eql new_result
	end
 	
  it "arrow should redirect to the target"
  
end
