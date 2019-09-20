require_relative '../../graphql_schema'
module Web
  module Controllers
    module Graphql
      class Show
        include Web::Action

        accept :json

        def call(params)
          variables = params[:variables] || {}
          result = GraphQLSchema.execute(
            params[:query],
            variables: variables
          )
          self.status = 200
          self.body   = JSON.generate(result)
          self.headers.merge!(
            {
              'Access-Control-Allow-Origin' => '*'
            }
          )
        end
      end
    end
  end
end
