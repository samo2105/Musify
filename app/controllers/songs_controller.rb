class SongsController < ApplicationController


  def create
    song = Song.new(song_params)
    song.playlist_id = params[:playlist_id]
    if song.save
      redirect_to song.playlist, notice: 'La canción ha sido creada con éxito'
    else
      redirect_to playlists_path, notice: 'No se ha podido crear la canción'
    end

  end

  def destroy
    song = Song.find(params[:id])
    playlist = song.playlist
    if song.destroy
      redirect_to playlist, notice: 'La canción ha sido eliminada'
    else
      redirect_to playlist, notice: 'La canción no ha sido eliminada'
    end
  end

  private
  def song_params
    params.require(:song).permit(:artist, :name)
  end

end
