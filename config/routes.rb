Qacio::Application.routes.draw do


  resources :document_versions

  get "pages/sign_in"
  get "pages/test"

  get "/document_versions/:id/annotate", { controller: "DocumentVersions", action: "annotate" }

  get "/collaborators/new", {controller: "Collaborator", action: "new"}
  get "/collaborators/document_version/:id/index", {controller: "Collaborator", action: "index"}
  delete "/collaborators/:id/delete", {controller: "Collaborator", action: "delete"}, as: "delete_collaborator"
  post "/collaborators/create"


  devise_for :users

  resources :projects

  resources :documents

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"

  post "/create_annotation", {controller: "Annotations", action: "create"}
  delete "/delete_annotation", {controller: "Annotations", action: "delete"}

end
