ActiveAdmin.register Item do

  controller do
    def permitted_params
      params.permit(:item => [:category_id, :title, :content, :author_id, :keywords, :inspiration_url])
    end
  end

  form do |f|
    f.inputs do
      f.input :category
      f.input :title
      f.input :content
      f.input :author
      f.input :inspiration_url
      f.input :keywords
    end
    f.actions
  end

  show do |item|
    attributes_table do
      row :id
      row :title
      row :content
      row :author
      row :category
      row :keywords
      row :inspiration_url
      row :preview do
        link_to 'Preview', item_path(item, :xml), target: '_blank'
      end
    end
  end

end
