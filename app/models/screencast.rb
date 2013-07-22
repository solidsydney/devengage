class Screencast < ActiveRecord::Base
  attr_accessible :body, :title, :episode, :thumbnail
  has_attached_file :episode
  has_attached_file :thumbnail, :style => { :thumb => '150x150#'  }

  def download
    self.increment!(:download_count, 1)
  end
  def played
    self.increment!(:play_count, 1)
  end

end
