BcmsKcfinder::Engine.routes.draw do
  get "browse" => "browse#index"
  get "browse/init" => "browse#init"
  post "browse/chDir" => "browse#change_dir"
  post "browse/upload" => "browse#upload"
  match "browse/:command" => "browse#command"
end
