# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    @albums = @albums.paginate(page: params[:page], per_page: 5)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.user = current_user
    if @album.save
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if current_user == @album.user && @album.update(album_params)
      redirect_to album_path(@album)
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy if current_user == @album.user
    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:title, :description, :author, :photo)
  end

end
