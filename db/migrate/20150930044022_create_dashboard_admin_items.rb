class CreateDashboardAdminItems < ActiveRecord::Migration
  def change
    create_table :dashboard_admin_items do |t|

      t.timestamps null: false
    end
  end
end
