class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.text :desc

      t.timestamps
    end
  end
end
