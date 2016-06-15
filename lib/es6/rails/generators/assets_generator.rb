module Es6 
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_es6
        template "javascript.es6", File.join('app/assets/javascripts', class_path, "#{file_name}.es6")
      end
    end
  end
end
