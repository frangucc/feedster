ActiveAdmin.register Category do

  controller do
    def permitted_params
      params.permit(:category => [:name, :parent_id])
    end
  end

end
