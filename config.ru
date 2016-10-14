
require './geminabox-0.13.2/lib/geminabox.rb'

Geminabox.data = "./data"

use Rack::ShowExceptions
use Rack::Auth::Basic, "Geminabox" do |username, password|
  [username, password] == ['admin', 'admin']
end

run Geminabox::Server
