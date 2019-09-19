Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id

      column :title, String, null: false
      column :text, String, text: true
      column :priority, Numeric
      column :due, DateTime
      column :start, DateTime
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
