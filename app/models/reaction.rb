class Reaction < ActiveRecord::Base
  attr_accessible :author, :image_url, :title, :notes_count, :reaction_url
end
