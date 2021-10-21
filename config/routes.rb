Rails.application.routes.draw do
  resource :choose_hero_class, only: [:show, :create, :destroy], controller: :choose_hero_class
  devise_for :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root 'home#index'
end
