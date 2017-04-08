class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    @projects = current_user.projects
    @collaborators = Collaborator.all
  end

  def users
    @users = User.all
  end

end
