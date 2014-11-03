Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :waiter_skills

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

  root :to => "home#index"
end
