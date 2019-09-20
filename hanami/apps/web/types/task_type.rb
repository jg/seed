module Types
  class TaskType < GraphQL::Types::Relay::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
  end
end
