require_relative 'task_type'

class QueryType < GraphQL::Schema::Object
  field :tasks,
        [Types::TaskType],
        null: false,
        description: "returns a list of tasks"

  def tasks
    TaskRepository.new.all
  end
end
