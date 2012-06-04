require 'open-uri' 

class Company < ActiveRecord::Base 

#TO DO:
# 1. I need to add a few columns to the DB for hiring_url and the boolean for hiring  
# 2. Write tests for what I want to do
# 3. I need to start assigning all of these values to their respective params and saving them in the db  


#here I need to save the company name and hiring attribute to the database. Use code similar to this:
# @company = Company.new(
# :name => company_name[0],
# :hiring => company_name[1])

#@company.save  
  
  def self.pull_all_company_data(doc)
    all_company_data = Array.new
          

    doc.css('article li a').each do |node|   
      company_link = node['href']
      @company_name = node.children.text
     
       
      if @company_name == "(hiring)" 
        begin       
          @company_name = URI.parse(company_link).host.gsub!(/^www\./, '').sub!(/.com/, '') 
        rescue 
          puts "Company Error: #{@company_name} with this url: #{company_link}"
        end                                                        
      end
      all_company_data << [@company_name, company_link] 
      puts "This is the company name: #{@company_name} with the url of #{company_link}"  
    end 
    
    # @hiring = all_company_data.select { |node| is_hiring?(node)} 
    
    # raise test_link_attributes.inspect    
    # company_name.pop # had to do this to remove some whitespace that was getting pushed into the array
    # company_name.reject! {|elem| elem.nil? || elem.strip.empty? }  
    # company_name.map! do |c|
    #   c.gsub("(hiring)", "1")
    # end 

    # total_count = company_name.count  
    # puts test_link_attributes.count
    # puts test_link_children.count 
    
    # company_name.each_with_index { |element, index| 
    #       index = 0  
    #       while index < total_count 
    #       # need to read up on how index works  
    #       puts "element: #{element}" 
    #       next_element = company_name[index + 1]   
    #       puts "next_element :#{next_element}"
    #             
    #         if next_element == "1" 
    #           next    
    #           index =+ 1
    #          
    #         else
    #           puts "Before insert - index : #{index} for element : #{element} and next element is #{next_element}"
    #           company_name.insert(index+1, "0")
    #           
    #           puts "After insert - index : #{index} for element : #{element} and next element is #{company_name[index+1]} and next next element is #{company_name[index+2]}" 
    #          
    #         index += 1         
    #                 
    #         next_element = company_name[index + 1]   
    # 
    #         end 
    # 
    #       end
    #         
    #     }   
      
      
         
         

  end    
  
  def self.pull_all_company_names(doc) 
    company_name = Array.new           

    doc.css('article li').each do |link|  
      raise link.inspect
      link.children.each do |single_link|
        if contains_hiring?(single_link) 
          company_name << single_link
        end
      end  
    end 
    company_name.pop # had to do this to remove some whitespace that was getting pushed into the array
  end 
  
  private
  
  def self.contains_hiring?(link)
    !link.content.include?('(hiring)')      
  end
end             

     