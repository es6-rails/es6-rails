require 'babel/transpiler'
require 'sprockets'
require 'ostruct'

module Sprockets
  append_path Babel::Transpiler.source_path
  
  if respond_to?(:register_transformer)
    register_mime_type 'text/ecmascript-6', extensions: ['.es6.js'], charset: :unicode
    register_transformer 'text/ecmascript-6', 'application/javascript', ES6
    register_preprocessor 'text/ecmascript-6', DirectiveProcessor
  end
  
  if respond_to?(:register_engine)
    args = ['.es6.js', ES6]
    args << { mime_type: 'text/ecmascript-6', silence_deprecation: true } if Sprockets::VERSION.start_with?("3")
    register_engine(*args)
  end

end