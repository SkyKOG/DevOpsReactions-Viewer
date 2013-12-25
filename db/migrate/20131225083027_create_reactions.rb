class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.string :title
      t.string :image_url
      t.string :author

      t.timestamps
    end
  end
end
