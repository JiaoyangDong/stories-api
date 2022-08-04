class Api::V1::StoriesController < Api::V1::BaseController
  def index
    @stories = Story.all
    # render json: @stories
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
