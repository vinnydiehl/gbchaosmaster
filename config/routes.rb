Gbchaosmaster::Application.routes.draw do
  root to: "home#index"

  match "/about", to: "pages#about"
  match "/contact", to: "pages#contact"
end
