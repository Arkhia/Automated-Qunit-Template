module Settings
  PUBLIC = File.join('..','client')
  #For debug purposes, use the non-minified libs. Not needed for this example
  JS_PATHS = {
    :model => File.join('javascript', 'model'),
    :test => File.join('test', 'unit'),
    :lib => File.join('lib')
  } 
end