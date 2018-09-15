# frozen_string_literal: true

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
