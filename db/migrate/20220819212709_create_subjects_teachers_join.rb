class CreateSubjectsTeachersJoin < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects_teachers do |t|
      t.references :subject, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true
    end
  end
end
