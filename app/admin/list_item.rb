ActiveAdmin.register ListItem do

  controller do
    def permitted_params
      params.permit(:list_item => [:list_id, :value])
    end
  end

  form do |f|
    f.inputs do
      f.input :list
      f.input :value
    end
    f.actions
  end

end
