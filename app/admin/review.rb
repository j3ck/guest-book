ActiveAdmin.register Review do
permit_params :name, :content

  index do
    column :name
    column :content
    actions
  end
end
