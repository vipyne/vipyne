class UsersController < ApplicationController

  def index
    github_page = Nokogiri::HTML(open("https://github.com/vipyne"))
    @streak = github_page.css('span.num')[2].text
  end

end
