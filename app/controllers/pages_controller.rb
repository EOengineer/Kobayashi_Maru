class PagesController < ApplicationController
  before_action :authenticate_user!, only: :fail
  before_action :admin_required?, only: :protect


  def home
    #binding.pry
  end

  def about
  end

  def fail
  end

  def protect
  end

end
