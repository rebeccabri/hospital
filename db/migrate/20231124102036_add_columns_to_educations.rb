class AddColumnsToEducations < ActiveRecord::Migration[7.1]
  def change
    add_column :educations, :university, :string
    add_column :educations, :degree, :string
    add_column :educations, :score, :integer
  end
end
