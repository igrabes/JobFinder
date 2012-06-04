require 'open-uri'

class Scrape < ActiveRecord::Base   
  
  def self.scrape_site
    @url = "http://www.nytm.org/made-in-nyc"
    doc = Nokogiri::HTML(open(@url))
    Company.pull_all_company_data(doc)
    # pull_all_company_names(doc)
    # pull_all_link_content(doc) 
    # pull_companies_hiring(doc)
  end 
  
  def self.pull_all_link_content(doc)
    companies = Array.new
    
    doc.css('li').each do |link|
      link.children.each do |single_link|
        link_content = single_link.content.gsub(/\n/,'').squeeze(' ')
        companies << link_content 
      end
    end
     companies.delete_if {|x| x == " "} 
  end
  
  private
  
  def self.contains_hiring?(link)
    !link.content.include?('(hiring)')      
  end
  
end
