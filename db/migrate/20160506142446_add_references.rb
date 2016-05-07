class AddReferences < ActiveRecord::Migration
  def change
    add_reference :events, :user, index: true, foreign_key: true
    add_reference :sponsors, :event, index: true, foreign_key: true
  end
end
