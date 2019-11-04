class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :punchline
      t.text   :long_description

      t.timestamps
    end
  end
end
