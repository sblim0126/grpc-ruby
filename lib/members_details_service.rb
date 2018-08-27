require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require './lib/protos/member_details_services_pb'
require './config/initializers'
require './app'

class MembersDetailsService < MembersDetails::MemberService::Service
	def hello(request, _call)
		HelloController.say_hello(request)
	end

	def search_students(request, _call)
		MembersController.search(request)
	end
end
