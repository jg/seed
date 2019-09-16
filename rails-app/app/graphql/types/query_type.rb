module Types
  class QueryType < Types::BaseObject
    field :tasks,
          [Types::TaskType],
          null: false,
          description: "returns a list of tasks"
          
    def tasks
      Task.all
    end
  end
end
