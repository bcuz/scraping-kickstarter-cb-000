# require libraries/modules here
require 'nokogiri'


def create_project_hash

  

  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  kickstarter.css('.project.grid_4').each do |pj|
    p pj.css('.bbcard_name strong a').text
  end

  {}
end
