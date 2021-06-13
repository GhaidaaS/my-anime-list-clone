class AnimeController < ApplicationController
  def search(anime_name)
    response = Faraday.get('https://api.jikan.moe/v3/search/anime', {q: anime_name}, {'User-Agent' => 'myapp'})
    response_body = JSON.parse(response.body)
    anime_list = response_body["results"]
    redirect_to root_path
  end
end
