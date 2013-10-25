ActiveAdmin.register Category do

  controller do
    def permitted_params
      params.permit(:category => [:name, :parent_id, :image])
    end
  end

  form multipart: true do |f|
    f.inputs do
      f.input :name
      f.input :parent, as: :select, collection: Category.all.map {|c| [c.label, c.id]}
      f.input :image, as: :file
    end
    f.actions
  end

  show do |category|
    attributes_table do
      row :id
      row :name
      row :parent do
        link_to category.parent.label, admin_category_path(category.parent)
      end
      row :image do
        link_to category.image.url, category.image.url
      end
      row :preview do
        link_to 'Preview', category_url(category, :xml), target: '_blank'
      end
    end
  end

end
