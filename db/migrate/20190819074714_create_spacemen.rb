class CreateSpacemen < ActiveRecord::Migration[5.2]
  def change
    create_table :spacemen do |t|
      t.string :name
      t.string :job
      t.references :spaceship, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
