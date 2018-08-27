# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: member_details.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "members_details.HelloRequest" do
    optional :name, :string, 1
  end
  add_message "members_details.HelloResponse" do
    optional :body, :string, 1
  end
  add_message "members_details.SearchRequest" do
    optional :name, :string, 1
  end
  add_message "members_details.Members" do
    repeated :students, :message, 1, "members_details.Member"
  end
  add_message "members_details.Member" do
    optional :name, :string, 1
    optional :age, :int64, 2
  end
end

module MembersDetails
  HelloRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("members_details.HelloRequest").msgclass
  HelloResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("members_details.HelloResponse").msgclass
  SearchRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("members_details.SearchRequest").msgclass
  Members = Google::Protobuf::DescriptorPool.generated_pool.lookup("members_details.Members").msgclass
  Member = Google::Protobuf::DescriptorPool.generated_pool.lookup("members_details.Member").msgclass
end