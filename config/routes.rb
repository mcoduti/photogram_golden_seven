Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/photos/create_photo/", { :controller => "photos", :action => "create_photo" })
  get("/update_photo/:id", { :controller => "photos", :action => "update_photo" })

  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })

  get("/photos/:id",       { :controller => "photos", :action => "show" })

  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

end
