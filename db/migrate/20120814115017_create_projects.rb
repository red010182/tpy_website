class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :language
      t.string :course
      t.string :featuredimage
      t.string :etc

      t.timestamps
    end
  end
end
