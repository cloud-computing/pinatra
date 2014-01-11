namespace :db do
  desc "Migrate the database"
  task :migrate do
    ActiveRecord::Base.establish_connection(YAML.load_file('config/database.yml')['development'])
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end
end