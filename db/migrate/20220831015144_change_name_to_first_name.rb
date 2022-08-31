class ChangeNameToFirstName < ActiveRecord::Migration[7.0]
  def change
                  # table    old    new
    rename_column :contacts, :name, :first_name
  end
end
