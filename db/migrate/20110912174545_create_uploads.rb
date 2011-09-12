class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.integer :size
      t.integer :site_id
      t.integer :user_id

      t.timestamps
    end
  end
end
