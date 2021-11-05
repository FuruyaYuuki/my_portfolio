class AddAvatarToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :avatar, :string
  end
end
