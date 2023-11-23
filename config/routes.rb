
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# config/routes.rb
Rails.application.routes.draw do
#  get 'appointments/reason:text'
#  get 'appointments/date:date'
 # get 'appointments/patientid:bigint'
 # get 'appointments/doctorsid:bigint'
 # get 'appointments/urgent:boolean'

  resources :doctors do
    resources :educations
  end
  resources :patients
  resources :appointments
  root to: "pages#home"



  # get "doctor", to: "doctor#index"
  # get "doctor/:id", to: "doctor#show", as: :receptionist
  # get "doctor/new",      to: "doctors#new",  as: :receptionist
  # post "doctor", to: "doctor#create"
  # get "doctor/:id/edit", to: "doctor#edit", as: :edit_doctor
  # patch "doctor/:id", to: "doctor#update"
  # delete "doctor/:id", to: "doctor#destroy"
end
