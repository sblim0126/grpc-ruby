class MembersController
	class << self
		def search(request)
			students = Member.where(name: request.name)
			unless students.presence
				raise GRPC::BadStatus.new(
					GRPC::Core::StatusCodes::NOT_FOUND,
					"Not Found Student #{request.name}"
				)
			end
			BuildGrpcObject.convert_students_to_grpc_obj(students)
		end
	end
end