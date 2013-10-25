ActiveAdmin.register ItemMeta do

  controller do
    def permitted_params
      params.permit(:item_meta => [:item_id, :key, :value])
    end
  end

end
