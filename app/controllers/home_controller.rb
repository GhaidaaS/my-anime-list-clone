class HomeController < ApplicationController
  def index
  end

  def search
    if params[:kind] == 'anime' || params[:kind] == 'manga'
      response = Faraday.get("https://api.jikan.moe/v3/search/#{params[:kind]}", {q: params[:name]})
      response_body = JSON.parse(response.body)
      @anime_list = response_body["results"]
      render 'home/index'
    else
      flash[:alert] = "You shoulde choose anime or manga"
    end
  end

end
