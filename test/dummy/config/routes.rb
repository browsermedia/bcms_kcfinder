Rails.application.routes.draw do

  mount BcmsKcfinder::Engine => "/bcms_kcfinder"

  mount_browsercms
end
