Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#index"
  resource :homes do 
  	member do 
  		get :leader_board
  	end
  end

end
