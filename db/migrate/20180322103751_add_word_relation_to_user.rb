class AddWordRelationToUser < ActiveRecord::Migration[5.1]
  def change
    change_table :words do |t|
      t.belongs_to :user, index: true
    end
  end
end
