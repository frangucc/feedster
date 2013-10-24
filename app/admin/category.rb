ActiveAdmin.register Category do

  controller do
    def permitted_params
      params.permit(:category => [:name, :parent_id])
    end
  end

  show do |category|
    attributes_table do
      row :id
      row :name
      row :parent
      row :preview do
        link_to 'Preview', category_url(category, :xml), target: '_blank'
      end
    end
  end

end
