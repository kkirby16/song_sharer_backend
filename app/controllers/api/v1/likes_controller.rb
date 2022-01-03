class LikesController < ApplicationController
  def create
  end

  def destroy
  end

  private

  def like_params
    params.permit(:song_id)
  end
end
