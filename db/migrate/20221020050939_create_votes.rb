class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.string :votable_type
      t.integer :answer_id
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
