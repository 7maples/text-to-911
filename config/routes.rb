E911::Application.routes.draw do

  resources :messages do
    collection do
      get :process_sms
    end
  end
end
