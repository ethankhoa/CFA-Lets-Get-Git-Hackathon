class AddLanguagesToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :languages, :string, array: true, :default => []
    add_column :projects, :collaborators, :json
  end
end
