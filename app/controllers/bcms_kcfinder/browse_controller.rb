require_dependency "bcms_kcfinder/application_controller"

module BcmsKcfinder
  class BrowseController < ApplicationController

    def index
    end

    def init

    end

    def command
      raise "Error: The command '#{params[:command]}' is not implemented yet."
    end
  end
end
