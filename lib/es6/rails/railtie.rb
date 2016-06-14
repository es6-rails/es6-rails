require 'rails/engine'
require 'rails/generators'
require 'es6/rails/js_hook'
require 'rails/railtie'

module Es6 
  module Rails
    class Railtie < ::Rails::Railtie
      config.app_generators.javascript_engine :es6

      if config.respond_to?(:annotations)
        config.annotations.register_extensions("es6") { |annotation| /#\s*(#{annotation}):?\s*(.*)$/ }
      end

      initializer 'override js_template hook' do |app|
        if app.config.generators.rails[:javascript_engine] == :es6
          ::Rails::Generators::NamedBase.send :include, Es6::Rails::JsHook
        end
      end
    end
  end
end
