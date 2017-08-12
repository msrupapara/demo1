class AddAttachmentColumnsToVideos < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :videos, :attachment
  end
end
