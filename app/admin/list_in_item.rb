ActiveAdmin.register ListInItem do

  controller do
    def permitted_params
      params.permit(:list_in_item => [:item_id, :list_id])
    end
  end

end
