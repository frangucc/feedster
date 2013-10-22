ActiveAdmin.register Item do

  controller do
    def permitted_params
      params.permit(:item => [:category_id, :title, :content, :author_id])
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

end
