class AddSiteIdToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :site_id
    end
  end
end
