require './config/database'
require './app/models/application_record'

ActiveRecord::Base.establish_connection(Database.config)

Dir[File.expand_path './app/models/*.rb'].each do |file|
  require file
end
