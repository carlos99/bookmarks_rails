Rails.application.routes.draw do
  resources :bookmarks

  root to: "bookmarks#index"

  get "/:slug" => "visits#index", as: :visit

  get "/crawl/:url" => "crawl#index", as: :crawl, constraints: {url: /.*/}

end
