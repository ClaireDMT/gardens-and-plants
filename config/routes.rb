Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: :create
  end
  resources :plants, only: :destroy do
    resources :plant_tags, only: [:new, :create]
  end
end


# resources => 7 routes du CRUD pour la resources en question
# sous-category (sous - index) de resourceS => collection. Ex: /premiums
# une page spécifique à UNE resource (chef du restaurant) => member

# collection VS member: pour toutes ou pour une (resource)
