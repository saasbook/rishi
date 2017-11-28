class CommitteesController < ApplicationController
  def index
    @committees = Committee.all
    @committees.each do |cmt|
      puts cmt.name
      puts cmt.intro_img
    end
  end
  def show
    @committee = Committee.find(params[:id])
    @name = @committee.name
    @text = @committee.intro
    @timeline = "Timeline"
  end
end
