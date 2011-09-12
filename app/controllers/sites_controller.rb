class SitesController < ApplicationController
  # GET /sites
  def index
    @sites = Site.all
  end

  # GET /sites/1
  def show
    @site = @current_site
    @users = @site.users
    @uploads = @site.uploads
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
    @site = Site.find(params[:id])
  end

  # POST /sites
  def create
    @site = Site.new(params[:site])
  end

  # PUT /sites/1
  def update
    @site = Site.find(params[:id])
  end

  # DELETE /sites/1
  def destroy
    @site = Site.find(params[:id])
    @site.destroy
  end

end
