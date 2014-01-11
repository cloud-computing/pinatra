configure :development do
  enable :logging, :dump_errors, :run, :sessions
  ActiveRecord::Base.establish_connection(YAML.load_file('config/database.yml')['development'])
end