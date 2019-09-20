require_relative '../../graphql_schema'
module Web
  module Controllers
    module Graphql
      class Options
        include Web::Action

        def call(params)
          self.status = 200
          self.headers.merge!(
            {
              'Access-Control-Allow-Origin' => '*',
              'Access-Control-Allow-Headers' => '*'
            }
          )
        end
      end
    end
  end
end
