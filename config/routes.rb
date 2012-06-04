BcmsKcfinder::Engine.routes.draw do
  get "browse" => "browse#index"
  get "browse/init" => "browse#init"
  get "browse/:command" => "browse#command"
end
