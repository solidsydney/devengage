class ScreencastsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :only => [:edit, :update, :destroy, :new ]
  before_filter :authenticate_user!

  def download
    @screencast = Screencast.find(params[:id])
    @screencast.download
    send_file @screencast.episode.path(:original),
              :type => @screencast.episode_content_type,
              :x_sendfile => true
  end

  def index
    @screencasts = Screencast.all
  end
end
