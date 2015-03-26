require 'mongo_mapper'
require 'reform'
require 'reform/form/coercion'
require 'virtus'
require 'solid_use_case'

require_relative 'storage/storage_autoload'

Reform::Form.reform_2_0!

MongoMapper.connection = Mongo::Connection.new('localhost', 27017)
MongoMapper.database = "use_case_development"

module Storage
end
