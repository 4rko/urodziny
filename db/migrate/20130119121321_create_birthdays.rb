class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.date :date
      t.string :name
      t.string :surname
      t.string :nick
      t.integer :user_id

      t.timestamps
    end
  end
end
