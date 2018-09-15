# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
