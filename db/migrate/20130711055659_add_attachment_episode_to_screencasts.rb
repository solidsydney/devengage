class AddAttachmentEpisodeToScreencasts < ActiveRecord::Migration
  def self.up
    change_table :screencasts do |t|
      t.has_attached_file :episode
    end
  end

  def self.down
    drop_attached_file :screencasts, :episode
  end
end
