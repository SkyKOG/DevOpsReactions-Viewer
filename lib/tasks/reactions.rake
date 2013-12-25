namespace :web do
  desc "Get reactions from DevOpsReactions"
  task :react => :environment do
    require 'nokogiri'
    require 'open-uri'

    puts ">> Started Operation"

    (1..42).each do |i|
      PAGE_URL = "http://devopsreactions.tumblr.com/page/#{i}"
      page = Nokogiri::HTML(open(PAGE_URL))

      page.css(".item_content").each do |item|
        title = item.css(".post_title a").text
        reaction_url = item.css(".post_title a")[0][:href]
        image_url = item.css("p img")[0][:src]
        author = item.css("p:nth-child(3)").text
        notes_count = item.css(".num_notes").text[/[0-9\.]+/].to_i

        puts ">> Fetched Data"
        reaction = Reaction.new(title: title, reaction_url: reaction_url, image_url: image_url, author: author, notes_count: notes_count)
        reaction.save

        puts ">> Added Reaction : #{title}"
        # puts item.css(".post_date").text
        # puts item.css(".num_notes").text[/[0-9\.]+/]
      end
    end

    reactions = Reaction.all.map { |reaction| { title: reaction.title, image_url: reaction.image_url, author: reaction.author } }
    Formatador.display_table(reactions)
  end
end
