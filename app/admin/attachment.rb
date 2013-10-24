ActiveAdmin.register Attachment do

  controller do
    def permitted_params
      params.permit(:attachment => [:item_id, :file])
    end
  end

  form multipart: true do |f|
    f.inputs do
      f.input :item
      f.input :file, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :item
      row :file do |attachment|
        link_to attachment.file.url, attachment.file.url
      end
    end
  end

end
