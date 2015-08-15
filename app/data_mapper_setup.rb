require 'data_mapper'
#require 'dm-validations'

env = ENV['RACK_ENV'] || 'development'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/application_chitter_#{env}")

# require './app/models/link'
# require './app/models/tag'
require './app/models/user'

# After declaring your models, you should finalise them
DataMapper.finalize

# However, the database tables don't exist yet. Let's tell datamapper to create them
DataMapper.auto_upgrade!