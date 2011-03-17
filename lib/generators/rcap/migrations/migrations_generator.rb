require 'rails/generators/migration'

module Rcap
  module Generators
    class MigrationsGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc <<DESC
Description:
    Generate RCAP migrations.
DESC

      def self.source_root
        @_rcap_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def create_migration_file
        Dir[File.join(MigrationsGenerator.source_root, '*_migration.rb')].each do |file|
          model = file[/(.*\/)?(.*)_migration.rb/, 2]
          migration_template file, "db/migrate/create_#{model}_table.rb"
        end
      end

      protected

      no_tasks do
        def self.next_migration_number(dirname) #:nodoc:
          if ActiveRecord::Base.timestamped_migrations
            Time.now.utc.strftime("%Y%m%d%H%M%S")
          else
            "%.3d" % (current_migration_number(dirname) + 1)
          end
        end
      end
    end
  end
end
