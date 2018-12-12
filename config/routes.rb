Rails.application.routes.draw do
 resources :articles
 get "say" => "say#hello"
end
