
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# config/routes.rb
Rails.application.routes.draw do
  get 'reason/appointment:text'
  get 'reason/date:date'
  get 'reason/patientid:bigint'
  get 'reason/doctorid:bigint'
  resources :doctors
  resources :patients
  root to: "pages#home"
end


  # get "doctor", to: "doctor#index"
  # get "doctor/:id", to: "doctor#show", as: :receptionist
  # get "doctor/new",      to: "doctors#new",  as: :receptionist
  # post "doctor", to: "doctor#create"
  # get "doctor/:id/edit", to: "doctor#edit", as: :edit_doctor
  # patch "doctor/:id", to: "doctor#update"
  # delete "doctor/:id", to: "doctor#destroy"
