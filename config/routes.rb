Gbchaosmaster::Application.routes.draw do
  root to: "home#index"

  match "/about", to: "pages#about"
  match "/contact", to: "pages#contact"

  match "/projects", to: "projects#index"
  match "/projects/nds_toolkit", to: "projects#nds_toolkit"
  match "/projects/nutella", to: "projects#nutella"
end
