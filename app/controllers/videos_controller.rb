class VideosController < ApplicationController
  def index
    @videos = Video.all.order("created_at DESC")
  end

  def show
    @videos = Video.all.order("created_at DESC")
  end

  def new
  end

  def crete
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
