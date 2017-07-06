require "./config/environment"

use Rack::MethodOverride

use CharactersController
use LocationsController
use ScenesController

run ApplicationController
