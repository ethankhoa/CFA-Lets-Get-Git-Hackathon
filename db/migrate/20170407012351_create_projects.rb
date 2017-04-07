class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, :null => false
      t.references :user, foreign_key: true, :null => false
      t.text :description
      t.string :status
      t.date :start_date
      t.integer :ratings

      t.timestamps
    end
  end
end
