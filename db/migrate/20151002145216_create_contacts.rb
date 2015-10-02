class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :info, null: false, limit: 50
      t.references :work_post, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
