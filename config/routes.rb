Rails.application.routes.draw do
  resources :users do
    resources :todos, controller: "mytodos" do
    end
  end
  resources :projects do
    resources :todos do
    end
  end

  get "my/todos" => "mytodos#index", :as => :my_todos 
end