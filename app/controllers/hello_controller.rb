class HelloController
	def self.say_hello(request)
		MembersDetails::HelloResponse.new(body: "Hello #{request.name}")
	end
end