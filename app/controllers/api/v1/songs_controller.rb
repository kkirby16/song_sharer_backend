class Api::V1::SongsController < ApplicationController
  def index
    songs = Song.order(created_at: :desc)
    render json: SongSerializer.new(songs)
    #instead of rendering erb file, we are going to render our json here
  end

  def show
    song = Song.find(params[:id])
    render json: SongSerializer.new(song)
  end

  def create
    song = Song.new(song_params)
    if song.save
      render json: SongSerializer.new(song), status: :accepted
    else
      render json: { errors: song.errors.full_messages }, status: :unprocessible_entity
      #we can send these error messages to the frontend to display them to the user.
    end
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :album, :song_url, :submitted_by, :genre_id)
  end
end

#**we want to be explicit about how our controller is declared here at the top to reflect our namespaced routes.

#fast_jsonapi gem gives us access to a new generator called serializer.
