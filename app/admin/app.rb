ActiveAdmin.register App do

  controller do
    def permitted_params
      params.permit(:app => [:name])
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :parent_category, as: :select, collection: Category.all.map {|c| [c.label, c.id]}
    end
    f.actions
  end

  show do |app|
    attributes_table do
      row :id
      row :name
      row :parent_category do
        link_to app.parent_category.label, admin_category_path(app.parent_category)
      end
    end
  end

end
