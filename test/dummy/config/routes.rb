Rails.application.routes.draw do
  mount SearchYoutube::Engine => "/search_youtube"
end
