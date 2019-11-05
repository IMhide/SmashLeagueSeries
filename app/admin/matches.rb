ActiveAdmin.register Match do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :team1_id, :team2_id, :scheduled_at, :score_winner, :score_looser, :winner_id, :looser_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:team1_id, :team2_id, :scheduled_at, :score_winner, :score_looser, :winner_id, :looser_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  filter :team1
  filter :team2

end
