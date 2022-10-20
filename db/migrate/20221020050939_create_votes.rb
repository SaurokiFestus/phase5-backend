class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.integer :up_vote
      t.integer :down_vote
      t.integer :answer_id
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
