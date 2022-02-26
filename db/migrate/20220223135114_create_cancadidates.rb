class CreateCancadidates < ActiveRecord::Migration[6.1]
  def change
    create_table :cancadidates do |t|
      t.string :name
      t.string :party
      t.integer :age
      t.text :policy
      t.integer :votes

      t.timestamps
    end
  end
end
