class SongsController < ApplicationController
  before_action :set_album
  before_action :set_song, only: [:show, :update, :destroy]

  def index
    json_response(@album.songs)
  end

  # GET /todos/:todo_id/items/:id
  def show
    json_response(@song)
  end

  # POST /todos/:todo_id/items
  def create
    @album.songs.create!(song_params)
    json_response(@album, :created)
  end

  # PUT /todos/:todo_id/items/:id
  def update
    @item.update(song_params)
    head :no_content
  end

  # DELETE /todos/:todo_id/items/:id
  def destroy
    @song.destroy
    head :no_content
  end

  private

  def song_params
    params.permit(:title, :length, :genre, :number, :done)
  end

  def set_album
    @album = Album.find(params[:album_id])
  end

  def set_song
    @song = @album.songs.find_by!(id: params[:id]) if @album
  end
end
