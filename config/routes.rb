Rails.application.routes.draw do
  defaults format: :json do
    resources :test, only: [:index]

    devise_for :users, path: '', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'sign_up'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

end
