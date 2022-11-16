class CreateTagQs < ActiveRecord::Migration[7.0]
  def change
    create_table :tag_qs do |t|
      t.string :tag_name
      t.string :tag_description

      t.timestamps
    end
  end
end
