class AddReactionUrlToReaction < ActiveRecord::Migration
  def change
    add_column :reactions, :reaction_url, :string
  end
end
