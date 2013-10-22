ActiveAdmin.register RelatedItem do

  controller do
    def permitted_params
      params.permit(:related_item => [:from_item_id, :to_item_id])
    end
  end

end
