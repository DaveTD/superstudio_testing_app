class CreateScouts < ActiveRecord::Migration[5.0]
  def change
    create_table :scouts do |t|
      t.references :user
      t.references :college
      t.string :job_title
      t.string :permissions_level
      t.timestamps
    end
  end
end
