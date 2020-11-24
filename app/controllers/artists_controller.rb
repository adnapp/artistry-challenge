class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid? #redirect to correct routing
            redirect_to artist_path(@artist)
        else #show errors from validatoin, then redirect to new page
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    def edit
        @artist = Artist.find(params[:id])
        @instruments = Instrument.all
    end

    def update
        @artist = Artist.find(params[:id])

        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to artist_path(@artist)
        end
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.destroy
        redirect_to artists_path
    end




private
  def artist_params
    params.require(:artist).permit(:name, :age, :title)
  end
end
