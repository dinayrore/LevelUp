class PagesController < ApplicationController
  def index
  end

  def home
    @post = current_user.posts.build if logged_in?
  end
end
