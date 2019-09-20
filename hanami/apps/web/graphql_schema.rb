require_relative 'types/query_type'

class GraphQLSchema < GraphQL::Schema
  query QueryType
end
