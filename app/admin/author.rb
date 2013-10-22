ActiveAdmin.register Author do

  controller do
    def permitted_params
      params.permit(:author => [:name])
    end
  end

end
