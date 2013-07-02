module Storey
  class RubyDumper

    easy_class_to_instance

    def initialize(options={})
      default_file_path = File.join(Rails.root, 'db', 'schema.rb')
      @file = options[:file] || default_file_path
    end

    def dump
      File.open(@file, "w:utf-8") do |file|
        ::ActiveRecord::Base.establish_connection(Rails.env)
        ::ActiveRecord::SchemaDumper.dump(::ActiveRecord::Base.connection, file)
      end
    end

  end
end
