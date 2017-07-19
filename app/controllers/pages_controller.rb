class PagesController < ApplicationController

before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the welcome page"
    #render :welcome
    #render :about #will show content of about.html.erb instead of default welcome.html.erb
  end

  def about
    @header = "This is the about page"
    #render :about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
  end


  def kittens
  end

  def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
      actual_password='hassan'
    given_password=params[:magic_word]
    if given_password==actual_password
      render:secrets
       else
         flash[:alert] = "Sorry, you're not authorized to see that page!"
         redirect_to "/welcome"
    end

  end


end
