# require libraries/modules here
require 'nokogiri'


def create_project_hash

  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  p kickstarter.css('.grid_4').each do |pj|
    
  end

  {}
end
