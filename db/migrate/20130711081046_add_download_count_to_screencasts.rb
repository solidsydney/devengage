class AddDownloadCountToScreencasts < ActiveRecord::Migration
  def change
    add_column :screencasts, :download_count, :integer, :default => 0
    add_column :screencasts, :play_count, :integer, :default => 0
  end
end
