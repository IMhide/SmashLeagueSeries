class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.bigint :team1_id
      t.bigint :team2_id
      t.datetime :scheduled_at
      t.integer :score_winner
      t.integer :score_looser
      t.bigint :winner_id
      t.bigint :looser_id

      t.timestamps
    end
  end
end
