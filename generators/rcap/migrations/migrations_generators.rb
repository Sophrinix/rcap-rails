module Rcap
  module Generators
    class MigrationsGenerator < Rails::Generators::NamedBase
      desc <<DESC
Description:
    Generate RCAP migrations.
DESC

      def self.source_root
        @_rcap_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      # taken from https://github.com/rails/rails/blob/master/activerecord/lib/rails/generators/active_record.rb
      def self.next_migration_number(dirname) #:nodoc:
        next_migration_number = current_migration_number(dirname) + 1
        ActiveRecord::Migration.next_migration_number(next_migration_number)
      end

      def create_migration_file
        Dir[MigrationsGenerator.source_root].each do |file|
          model = file[/(.*\/)?(.*)_migration.rb/, 2]
          migration_template file, "db/migrate/create_#{model}_table.rb"
        end
      end
    end
  end
end
