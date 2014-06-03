ActiveAdmin.register AdminUser do

  permit_params :email, :password

  index do
    selectable_column
    column :email
    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
    end
    f.actions
  end

end
