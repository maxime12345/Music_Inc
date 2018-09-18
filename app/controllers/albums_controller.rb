# frozen_string_literal: true

class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    if params[:q].present?
      sql_query = "albums.#{params[:critere]} @@ :q"
      @albums = Album.where(sql_query, q: "%#{params[:q]}%")
    else
      @albums = Album.all
    end
    @albums = @albums.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  def new
    @album = Album.new
  end

  def edit
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

  def update
    if current_user == @album.user
      if @album.update(album_params)
        redirect_to album_path(@album)
      else
        render :edit
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user == @album.user
      @album.destroy
      redirect_to albums_path
    else
      redirect_to root_path
    end
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :description, :author, :photo)
  end
end
