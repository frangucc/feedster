ActiveAdmin.register List do

  controller do
    def permitted_params
      params.permit(:list => [:name, :ordered])
    end
  end

  show do |list|
    attributes_table do
      row :id
      row :name
      row :ordered
      row :br_separated_items
    end
  end

end
