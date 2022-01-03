class Api::V1::LikesController < ApplicationController
  def create
    @like = Like.create(song_id: params[:song_id])
  end

  def destroy
  end

  private

  def like_params
    params.permit(:song_id)
  end
end
