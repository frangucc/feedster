ActiveAdmin.register App do

  controller do
    def permitted_params
      params.permit(:app => [:name])
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :parent_category
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :parent_category
    end
  end

end
