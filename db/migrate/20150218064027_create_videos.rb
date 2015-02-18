class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.attachment :video
      t.string :thumbnail_path

      t.timestamps
    end
  end
end
