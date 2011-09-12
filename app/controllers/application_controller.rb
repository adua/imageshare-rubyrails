class ApplicationController < ActionController::Base
  include UrlHelper
  protect_from_forgery
  before_filter :currentSite

  private
  def currentSite
    @current_site = Site.find_by_name(request.subdomain)
  end
end
