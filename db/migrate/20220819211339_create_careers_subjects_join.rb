class CreateCareersSubjectsJoin < ActiveRecord::Migration[7.0]
  def change
    create_table :careers_subjects, id: false do |t|
      t.references :career, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
    end
  end
end
