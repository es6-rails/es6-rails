module Es6
  module Rails
    module ViewHelpers
      def es6_transform(es6_code = nil, &block)
        es6_code ||= capture(&block)
        js_code = Babel::Transpiler.transform(es6_code)["code"]
        js_code.html_safe #js code
        # javascript_tag js_code # adds <script> tags to generated js code
      end
    end
  end
end


ActiveSupport.on_load( :action_view ){ include Es6::Rails::ViewHelpers }
