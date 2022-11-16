class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :bio
      t.string :interests
      t.string :cohort
      t.integer :user_id


      t.timestamps
    end
  end
end
