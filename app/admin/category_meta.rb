ActiveAdmin.register CategoryMeta do

  controller do
    def permitted_params
      params.permit(:category_meta => [:category_id, :key, :value])
    end
  end

  form do |f|
    f.inputs do
      f.input :category, as: :select, collection: Category.all.map {|c| [c.label, c.id]}
      f.input :key
      f.input :value
    end
    f.actions
  end

  show do |meta|
    attributes_table do
      row :id
      row :category do
        link_to meta.category.label, admin_category_path(meta.category)
      end
      row :key
      row :value
    end
  end

end
