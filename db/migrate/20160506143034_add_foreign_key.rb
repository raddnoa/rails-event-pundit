class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :events, :users
    add_foreign_key :sponsors, :events
  end
end
