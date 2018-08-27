require './lib/protos/member_details_services_pb'

require 'grpc'

stub = MembersDetails::MemberService::Stub.new(
	'0.0.0.0:50052', :this_channel_is_insecure
)

puts "testing hello rpc"
request = MembersDetails::HelloRequest.new(name: "Harry")
response = stub.hello(request)
puts response.body

puts "testing search_students rpc"
search_request = MembersDetails::SearchRequest.new(name: "justin")
begin
	response = stub.search_members(search_request)
	response.members.each do |member|
		puts "Name: #{member.name}, Age: #{member.age}"
	end
rescue GRPC::BadStatus => e
	if e.code == GRPC::Core::StatusCodes::NOT_FOUND
		puts e.message
	end
end
