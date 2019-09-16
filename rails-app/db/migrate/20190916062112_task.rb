class Task < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string     :title, null: false
      t.text       :text
      t.integer    :priority
      t.datetime   :due
      t.datetime   :start
      t.column     :repeats, :interval
      t.column     :estimate, :interval
      t.timestamps
    end
  end
end
