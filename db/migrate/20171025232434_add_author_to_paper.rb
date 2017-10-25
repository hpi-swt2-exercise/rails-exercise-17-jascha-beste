class AddAuthorToPaper < ActiveRecord::Migration
  def change
    add_reference :papers, :author, index: true, foreign_key: true
  end
end
