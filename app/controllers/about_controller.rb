class AboutController < ApplicationController
 # caches_page :index
  def index
    @user = User.new
  end
end
