module BuildGrpcObject
	class << self
		def convert_members_to_grpc_obj(students)
			members_grpc_obj = StudentsDetails::Students.new(students: [])
			members.collect do |member|
				members_grpc_obj.members << convert_member_to_grpc_obj(member)
			end
			members_grpc_obj
		end

		def convert_member_to_grpc_obj(student)
			StudentsDetails::Student.new(
				name: member.name,
				age:  member.age,
			)
		end
	end
end