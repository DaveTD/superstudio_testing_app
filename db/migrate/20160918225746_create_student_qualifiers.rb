class CreateStudentQualifiers < ActiveRecord::Migration[5.0]
  def change
    create_table :student_qualifiers do |t|
      t.references :athlete
      t.string :qualifier_name
      t.string :score
      t.timestamps
    end
  end
end
