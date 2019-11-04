ActiveAdmin.register Player do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :role, :twitter, :team_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :role, :twitter, :team_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
   show do
    panel "Informations" do
      attributes_table_for resource do
        row :name
        row :role
        row :twitter
        row :team
        row :image do |t|
          image_tag(url_for(t.image))
        end
      end
    end
  end

  form do |f|
    f.inputs "Player" do
      f.input :name
      f.input :role
      f.input :twitter
      f.input :team
      f.input :image, as: :file
    end
    f.actions
  end

 
  show do
  end
  
end
