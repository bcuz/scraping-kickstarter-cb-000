# require libraries/modules here
require 'nokogiri'

def create_project_hash

  projects = {}

  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  kickstarter.css('.project.grid_4').each do |pj|
    projects[pj.css('.bbcard_name strong a').text] = {
      image_link: pj.css('img').attribute('src')
    }
  end

  # im bored.
  projects
end
