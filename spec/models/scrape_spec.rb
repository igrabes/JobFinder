require 'spec_helper'
             
describe Scrape do
  
  # it "should add all link content of a list item to an array"  do
  #   doc = Nokogiri::HTML("<html><body><li><a href='http://www.thecompanywebsite.com'>The Company Name</a>
  #                         <a href='http://www.firsttestlink.com'>(hiring)</a></li>") 
  #   Scrape.pull_all_link_content(doc).count.should == 2
  # end
  # 
  # it "should find ONLY the company name from the anchor tag content" do
  #   doc = Nokogiri::HTML("<html><body><li><a href='http://www.thecompanywebsite.com'>The Company Name</a>
  #                         <a href='http://www.firsttestlink.com'>(hiring)</a></li>")
  #   Scrape.pull_all_company_names(doc).count.should == 1
  # end 
  
  # it "should find all the company name from the anchor tag content" do
  #   doc = Nokogiri::HTML("<html><body><li><a href='http://www.thecompanywebsite.com'>The Company Name</a>
  #                         <a href='http://www.firsttestlink.com'>(hiring)</a></li>
  #                         <li><a href='http://www.thecompanywebsite.com'>The Second Company Name</a>
  #                                               <a href='http://www.firsttestlink.com'>(hiring)</a></li>")
  #   Scrape.pull_all_company_names(doc).count.should == 2
  # end     
  
  # it "should find the company name from the anchor tag content" do
  #     doc = Nokogiri::HTML("<html><body><li><a href='http://www.thecompanywebsite.com'>The Company Name</a>
  #                           <a href='http://www.firsttestlink.com'>(hiring)</a></li>")
  #     Scrape.pull_companies_hiring(doc).count.should == 3
  #   end
  #   
  #   it "should find the link that has 'hiring' in their anchor tags" do
  #     doc = Nokogiri::HTML("<html><body><li><a href='http://www.firsttestlink.com'>(hiring)</a></li>")
  #     Scrape.pull_companies_hiring(doc).count.should == 1
  #   end
  #   
  #   it "should find all links that have 'hiring' in their anchor tags" do
  #     doc = Nokogiri::HTML("<html><body><li><a href='http://www.firsttestlink.com'>(hiring)</a></li>
  #                                       <li><a href='http://www.secondtestlink.com'>(hiring)</a></li>
  #                                       <li><a href='http://www.thirdtestlink.com'>(not)</a></li>")
  #                                       JobFinder.pull_companies_hiring(doc).count.should == 2
  #   end
  #   
  #   it "should get a total count of all the links that have hiring in their anchor tags" do
  # 
  #   end
end
