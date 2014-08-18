Loop::Application.routes.draw do
  root to: "static_pages#home"

  resources :clients, :deliverables, :issues, :projects

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/email"
  end
end
