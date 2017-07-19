class PagesController < ApplicationController

  def welcome
    render :about #will show content of about.html.erb instead of default welcome.html.erb
  end

end
