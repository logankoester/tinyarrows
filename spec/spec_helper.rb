require 'spec'

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'open-uri'
require 'lib/tinyarrows'

Spec::Runner.configure do |config|	
	VALID_URI = URI.parse "http://tinyarro.ws"
end
