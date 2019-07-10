class AddTopScoreToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :top_score, :integer
  end
end
