class Admin::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
    #@genress = Genre.find(genre_params[:id])
  end

  def create
    genre = Genre.new(genre_params)
    genre.save
    redirect_to admin_genres_path
  end

  def edit
    @genre = Genre.new
    @genres = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(genre_params)
    redirect_to admin_genres_path(genre.id)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
