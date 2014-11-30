class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.date :birthday

      t.timestamps
    end
  end
end
