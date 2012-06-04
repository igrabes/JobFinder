require 'spec_helper'

describe Company do
  
  it "should count the number of links within a list item" do
    doc = Nokogiri::HTML("<html><body><article><li><a href='http://www.thecompanywebsite.com'>The Company Name</a>
                         </li></article>")
    Company.pull_all_company_data(doc).count.should == 2
  end  
  
 
  it "should find the company name and whether they are hiring" do
    doc = Nokogiri::HTML("<html><body><article><li><a href='http://www.thecompanywebsite.com'>The Company Name</a>
                          <a href='http://www.firsttestlink.com'>(hiring)</a></li></article>")
    Company.pull_all_company_data(doc).count.should == 2
  end  
  
  
  it "should check to see if a company is hiring and if it isn't add in a 0 for that value" do

  end
  
end
