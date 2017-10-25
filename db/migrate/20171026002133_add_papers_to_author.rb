class AddPapersToAuthor < ActiveRecord::Migration
  def change
    add_reference :authors, :paper, index: true, foreign_key: true
  end
end
