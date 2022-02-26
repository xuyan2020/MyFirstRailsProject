class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.integer :age
      t.string :policy
      t.text :text
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
