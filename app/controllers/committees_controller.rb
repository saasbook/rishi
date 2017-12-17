class CommitteesController < ApplicationController
  def index
    @projects = Project.all
    @projects.each do |proj|
      puts proj.name
      puts proj.intro_img
    end
  end
  def show
    @project = Project.find(params[:id])
    @name = @project.name
    @text = @project.intro
    @timeline = "Timeline"
  end
end
