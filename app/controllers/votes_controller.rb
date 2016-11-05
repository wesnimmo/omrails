class VotesController < ApplicationController
	before_action :authenticate_user!

  def create
    link = Link.find(params[:id])
    link.liked_by current_user
    redirect_to links_path, notice: "You have voted for!"	
  end

  def destroy
    link = Link.find(params[:id])
    link.unliked_by current_user
    redirect_to links_path, notice: "You have voted against!"
  end
end
