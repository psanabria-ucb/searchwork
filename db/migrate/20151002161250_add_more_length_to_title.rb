class AddMoreLengthToTitle < ActiveRecord::Migration
  def change
  	change_column :work_posts, :title, :string, limit: 100
  end
end
