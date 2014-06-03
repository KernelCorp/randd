ActiveAdmin.register Product do

  permit_params :title, :text

  index do
    selectable_column
    column :title
    column :text
    default_actions
  end

end
