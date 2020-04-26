class CreateCompaniesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :companies_users do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
    end
  end
end
