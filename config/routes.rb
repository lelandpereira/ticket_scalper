Rails.application.routes.draw do
  # Routes for the Event resource:

  # CREATE
  get("/events/new", { :controller => "events", :action => "new_form" })
  post("/create_event", { :controller => "events", :action => "create_row" })

  # READ
  get("/events", { :controller => "events", :action => "index" })
  get("/events/:id_to_display", { :controller => "events", :action => "show" })

  # UPDATE
  get("/events/:prefill_with_id/edit", { :controller => "events", :action => "edit_form" })
  post("/update_event/:id_to_modify", { :controller => "events", :action => "update_row" })

  # DELETE
  get("/delete_event/:id_to_remove", { :controller => "events", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
