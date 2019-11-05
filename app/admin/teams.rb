ActiveAdmin.register Team do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :punchline, :long_description, :twitter,:image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :punchline, :long_description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    panel "Informations" do
      attributes_table_for resource do
        row :name
        row :twitter
        row :punchline
        row :long_description
        row :image do |t|
          image_tag(url_for(t.image))
        end
      end
    end
  end

  filter :name

  form do |f|
    f.inputs "Team" do
      f.input :name
      f.input :twitter
      f.input :punchline
      f.input :long_description
      f.input :image, as: :file
    end
    f.actions
  end

end
