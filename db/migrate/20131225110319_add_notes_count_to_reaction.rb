class AddNotesCountToReaction < ActiveRecord::Migration
  def change
    add_column :reactions, :notes_count, :integer
  end
end
