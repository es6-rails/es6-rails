module Es6 
  module Rails
    module JsHook
      extend ActiveSupport::Concern
      included do
        no_tasks do
          redefine_method :js_template do |source, destination|
            template(source + '.es6', destination + '.es6')
            template(source + '.es6.js', destination + '.es6.js')
          end
        end
      end
    end
  end
end
