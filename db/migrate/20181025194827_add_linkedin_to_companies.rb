class AddLinkedinToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :linkedin, :string
  end
end
