namespace :web do
  desc "Get reactions from DevOpsReactions"
  task :react => :environment do
    require 'nokogiri'
    require 'open-uri'

    (1..10).each do |i|
      PAGE_URL = "http://devopsreactions.tumblr.com/page/#{i}"
      page = Nokogiri::HTML(open(PAGE_URL))

      page.css(".item_content").each do |item|
        title = item.css(".post_title a").text
        image_url = item.css("p img")[0][:src]
        author = item.css("p:nth-child(3)").text

        reaction = Reaction.new(title: title, image_url: image_url, author: author)
        reaction.save
        # puts item.css(".post_date").text
        # puts item.css(".num_notes").text[/[0-9\.]+/]
      end
    end

    reactions = Reaction.all.map { |reaction| { title: reaction.title, image_url: reaction.image_url, author: reaction.author } }
    Formatador.display_table(reactions)
  end
end
