require_relative './config/environment'


use Rack::MethodOverride
use FibonacciController
run ApplicationController
