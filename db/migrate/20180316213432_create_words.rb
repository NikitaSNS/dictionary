class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :en
      t.string :ru

      t.timestamps
    end
  end
end
