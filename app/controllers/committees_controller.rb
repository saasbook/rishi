class CommitteesController < ApplicationController
  def show
    @name = params[:id]
    @text = "lorem ipsum blah blah"
    @timeline = "timeline"
  end
end
