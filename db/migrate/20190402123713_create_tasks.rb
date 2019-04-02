class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|    
      t.string :desc
      t.datetime :estimate_at
      t.datetime :done_at
      t.references :user, index: true

      t.timestamps
    end
  end
end
