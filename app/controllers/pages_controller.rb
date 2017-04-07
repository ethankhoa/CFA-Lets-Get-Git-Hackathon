class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
  end

  def about
  end

  def contact
  end

  def dashboard
  end
end
