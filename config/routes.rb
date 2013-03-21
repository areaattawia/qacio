Qacio::Application.routes.draw do

  devise_for :users

  root :to => "pages#home"

  resources :document_versions

  resources :projects do
	  resources :documents
	end

  resources :annotations, :only => [ :create, :destroy ]

  resources :collaborators, :only => [ :new, :index, :destroy, :create]


  get "/document_versions/:id/annotate", { controller: "DocumentVersions", action: "annotate", as: 'annotate_document_version' }

  post "/create_annotation", {controller: "Annotations", action: "create"}
  delete "/delete_annotation/:number", {controller: "Annotations", action: "destroy"}
  put "/increment_annotation_count/:id", {controller: "DocumentVersions", action: "increment"}



end
