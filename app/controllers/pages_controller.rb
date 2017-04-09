class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    @collabwith = joined_project
    @projects = current_user.projects
    @collaborators = Collaborator.all
    @pending_collaborators = all_collaboration_requests

  end

  def project_dashboard
    @approved_collaborators = approved_collaborators
    @pending_collaborators = pending_collaborators_project
  end

  def users
    @users = User.all
  end

  # listing project that users joined
  def joined_project
    @collaborators = Collaborator.all
    @joined_projects = []

    @collaborators.each do |collaborator|
      if collaborator.user_id == current_user.id && collaborator.project.user_id != current_user.id
        @joined_projects << collaborator
      end
    end
    return @joined_projects
  end

  # listing all the requests on all user's projects
  def all_collaboration_requests
    @allrequests = Collaborator.where('approved = false').all
    @projects = current_user.projects
    @myrequests = []

    @projects.each do |project|
      @allrequests.each do |request|
        if project.id == request.project_id
          @myrequests << request
        end
      end
    end
    return @myrequests
  end

  # listing all the approved collaborator for a project
  def approved_collaborators
    @project = Project.find(params[:project_id])
    @collaborators = Collaborator.where('approved = true').all
    @approved_list = []

    @collaborators.each do |collaborator|
      if collaborator.project_id == @project.id
        @approved_list << collaborator
      end
    end
    return @approved_list
  end

  #listing all the pending collaborator for a project
  def pending_collaborators_project
    @project = Project.find(params[:project_id])
    @myrequests = all_collaboration_requests
    @pending_list = []

    @myrequests.each do |request|
      if request.project_id == @project.id
        @pending_list << request
      end
    end
    return @pending_list
  end

end
