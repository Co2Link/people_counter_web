Rails.application.routes.draw do
  resources :time_slices
  resources :counters
  put '/counters/:id/api',  to: "counters#update_by_timeSlice"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end