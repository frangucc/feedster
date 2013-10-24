ActiveAdmin.register AppParentCategory do

  controller do
    def permitted_params
      params.permit(:app_parent_category => [:app_id, :category_id])
    end
  end

end
