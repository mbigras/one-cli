require 'aruba/cucumber'

Aruba.configure do |config|
  config.command_search_paths << '.'
end

at_exit do
  tmp = File.expand_path '../../tmp', __dir__
  FileUtils.rm_rf tmp
end