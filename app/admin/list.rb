ActiveAdmin.register List do

  controller do
    def permitted_params
      params.permit(:list => [:name, :ordered, :comma_separated_items])
    end
  end

end
