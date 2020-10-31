class StaticPagesController < ApplicationController
  require 'flickraw'
  FlickRaw.api_key = ENV['FLICKR_API_KEY']
  FlickRaw.shared_secret = ENV['FLICKR_SECRET']

  def index
    if params[:flickr_id]
      @photos = flickr.photos.search(user_id:params[:flickr_id])
    end
  end
end
