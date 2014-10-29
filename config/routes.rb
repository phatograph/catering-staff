Rails.application.routes.draw do
  resources :waiters do
    member do
      patch 'add_skill'
      patch 'remove_skill/:waiter_skill_id',
        :action => 'remove_skill',
        :as => 'remove_skill'

      patch 'add_availability'
    end
  end

  resources :events
  resources :waiter_skills
  devise_for :users
  root :to => "home#index"
end
