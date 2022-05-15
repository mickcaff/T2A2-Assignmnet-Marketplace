class RenameLongToLngInServices < ActiveRecord::Migration[7.0]
  def change
    rename_column :services, :long, :lng
  end
end
