a = ["1800Postcards.com", "20x200", "(hiring)"]

a.each_index {|index| 
  next_element = a[index + 1]
   
  a.insert(0, 0) if next_element != "(hiring)"  
}         

puts a              


link.children.inspect 
[#<Nokogiri::XML::Element:0x80cad610 name="a" attributes=[#<Nokogiri::XML::Attr:0x80cac968 name="href" value="http://www.thecompanywebsite.com">] children=[#<Nokogiri::XML::Text:0x80c9ec00 "The Company Name">]>, #<Nokogiri::XML::Text:0x80c9b67c "\n                          ">, #<Nokogiri::XML::Element:0x80c98238 name="a" attributes=[#<Nokogiri::XML::Attr:0x80c97c5c name="href" value="http://www.firsttestlink.com">] children=[#<Nokogiri::XML::Text:0x80c6e8c0 "(hiring)">]>]
link.inspect
#<Nokogiri::XML::Element:0x8184cb88 name="li" children=[#<Nokogiri::XML::Element:0x8184c624 name="a" attributes=[#<Nokogiri::XML::Attr:0x8184c570 name="href" value="http://www.thecompanywebsite.com">] children=[#<Nokogiri::XML::Text:0x8184a7e8 "The Company Name">]>, #<Nokogiri::XML::Text:0x8184a180 "\n                          ">, #<Nokogiri::XML::Element:0x81849fc8 name="a" attributes=[#<Nokogiri::XML::Attr:0x81849f50 name="href" value="http://www.firsttestlink.com">] children=[#<Nokogiri::XML::Text:0x81849690 "(hiring)">]>]>
link.children.attributes.inspect