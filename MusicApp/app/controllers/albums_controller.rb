class AlbumsController < ApplicationController

  #want new to create new album
    #for existing band
    #for new band

  def new
    @band = Band.find_by(id: params[:band_id])
    render :new
  end

  def create
    #find exsiting record of band with band params from form
    @band = Band.find_by_name(album_params[:band_name])

    #get id of band from database
    @band_id = @band.band_id

    #create new instance album with params from form
    #add in band id 

    @album = Album.new(title: album_params[:album_name],
                      yr: album_params[:album_yr],
                      band_id: @band_id,
                      studio: album_params[:studio])

    #save album to database
    @album.save
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def album_params
    params.require(:album).permit(:album_name, :studio, :album_yr, :band_name)
  end
end
