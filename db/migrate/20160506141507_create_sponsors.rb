class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
