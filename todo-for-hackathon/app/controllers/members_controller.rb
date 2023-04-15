class MembersController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    profiles = Profile.new
  end

  def create
    @profile = Profile.new(name: params[:name], can_use_tech: params[:can_use_tech], comment: params[:comment])
    @profile.save
    redirect_to "/members/index"
  end
end
