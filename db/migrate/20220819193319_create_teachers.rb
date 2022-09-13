class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :last_name
      t.string :maiden_name
      t.string :email
      t.string :mobile_phone
      t.string :rfc
      t.string :curp
      t.string :phone
      t.string :gender
      t.datetime :birthdate
      t.string :nationality

      t.timestamps
    end
  end
end
