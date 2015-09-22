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
    @artist = Artist.new(artist_params) #Pass in the params entered in the new method, aka the form in the view
    if @artist.save #If the artist is saved to the db, send to the index back
      redirect_to artists_path
     else
      render 'new' #if not saved, render the 'new'
    end
  end

  def edit
    #Edit is a method that is used simply to capture what a user wants to edit
    @artist = Artist.find(params[:id])
  end

  def update
    #Update is a method to override previous parameters of an exisiting instance of the class/model
    @artist = Artist.find(params[:id]) #Find the artist.
    if @artist.update(artist_params) #Update the artist's parameters.
      redirect_to @artist #Go to the artist's show page.
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id]) #First locate the artist by its parameters
    @artist.destroy #Then delete the artist

    redirect_to artists_path
  end


private

  def artist_params
    params.require(:artist).permit(:name, :image_url, :description)
  end

end
