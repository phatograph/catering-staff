Rails.application.routes.draw do
  resources :users
  resources :waiters do
    resources :availabilities

    member do
      patch 'add_skill'
      patch 'remove_skill/:waiter_skill_id',
        :action => 'remove_skill',
        :as => 'remove_skill'
    end
  end

  resources :events do
    resources :event_positions
  end

  resources :waiter_skills

  devise_for :users
  root :to => "home#index"
end
