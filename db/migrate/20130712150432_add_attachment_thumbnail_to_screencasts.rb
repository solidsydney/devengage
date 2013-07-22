class AddAttachmentThumbnailToScreencasts < ActiveRecord::Migration
  def self.up
    change_table :screencasts do |t|
      t.has_attached_file :thumbnail
    end
  end

  def self.down
    drop_attached_file :screencasts, :thumbnail
  end
end
