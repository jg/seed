module Web
  module Controllers
    module Home
      class Index
        include Web::Action

        def call(params)
          r = TaskRepository.new
          present = -> (task) { task.title }
          self.body = r.all.map(&present).join('<br />')
        end
      end
    end
  end
end
