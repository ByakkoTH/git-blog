Rails.application.routes.draw do
  get 'say/hello'

  get 'hola', to: 'say#hello'
end
