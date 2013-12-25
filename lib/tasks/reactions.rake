namespace :web do
  desc "Get reactions from DevOpsReactions"
  task :react => :environment do
    require 'nokogiri'
    require 'open-uri'

    (1..10).each do |i|
      PAGE_URL = "http://devopsreactions.tumblr.com/page/#{i}"
      page = Nokogiri::HTML(open(PAGE_URL))

      page.css(".item_content").each do |item|
        puts item.css(".post_title a").text
        puts item.css("p img")[0][:src]
        puts item.css("p:nth-child(3)").text
        puts item.css(".post_date").text
        puts item.css(".num_notes").text[/[0-9\.]+/]
      end
    end

  end
end
