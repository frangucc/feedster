ActiveAdmin.register App do

  controller do
    def permitted_params
      params.permit(:app => [:name])
    end
  end

end
