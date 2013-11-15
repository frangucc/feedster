class AppsController < ApplicationController

  def show
    @app = App.find(params[:id])
  end

  def configuration
    @app = App.find(params[:id])
  end

end
