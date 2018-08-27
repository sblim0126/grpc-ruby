# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: member_details.proto for package 'members_details'

require 'grpc'
require_relative 'member_details_pb'

module MembersDetails
  module MemberService
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'members_details.MemberService'

      rpc :Hello, HelloRequest, HelloResponse
      rpc :SearchMembers, SearchRequest, Members
    end

    Stub = Service.rpc_stub_class
  end
end
