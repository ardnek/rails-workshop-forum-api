class ForumsController < ApplicationController

  def index
    render json: Forum.all, except: [:info, :topics, :users]
  end

  def show
    render json: Forum.find(params[:id]), except: :info
  end


end
