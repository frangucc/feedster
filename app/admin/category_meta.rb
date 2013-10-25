ActiveAdmin.register CategoryMeta do

  controller do
    def permitted_params
      params.permit(:category_meta => [:category_id, :key, :value])
    end
  end

end
