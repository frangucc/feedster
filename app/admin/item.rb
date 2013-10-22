ActiveAdmin.register Item do

  controller do
    def permitted_params
      params.permit(:item => [:category_id, :title, :content])
    end
  end

end
