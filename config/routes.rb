Qacio::Application.routes.draw do

  devise_for :users

  root :to => "users#show"

  resources :document_versions, :except => [ :index, :show ]

  resources :projects

  resources :documents

  resources :annotations, :only => [ :create, :destroy ]

  resources :collaborators, :only => [ :new, :index, :destroy, :create]


  get "/document_versions/:id/annotate", { controller: "DocumentVersions", action: "annotate", as: 'annotate_document_version' }



end
