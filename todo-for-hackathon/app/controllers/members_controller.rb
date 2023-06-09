class MembersController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    profiles = Profile.new
  end

  def create
    puts "==== params.inspect ===="
    puts params.inspect
    @profile = Profile.new(name: params[:name], can_use_tech: params[:can_use_tech], comment: params[:comment], color: params[:input_color])
    @profile.save
    redirect_to "/members/index"
  end

  def edit
    @profile = Profile.find_by(id: params[:id])
  end

  def destroy
    @profile = Profile.find_by(id: params[:id])
    @profile.destroy
    redirect_to("/members/index")
  end

  def update
      @profile = Profile.find_by(id: params[:id])
      @profile.name = params[:name]
      @profile.can_use_tech = params[:can_use_tech]
      @profile.comment = params[:comment]
      @profile.color = params[:input_color]
      @profile.save
      redirect_to("/members/index")
  end
end
