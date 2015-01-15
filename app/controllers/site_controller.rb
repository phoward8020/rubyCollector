class SiteController < ApplicationController

  def index
    # render plain: "This is the home page. It will display info about the site if no current_user; else will show user's collections/interests."
    @user = current_user
  end

end