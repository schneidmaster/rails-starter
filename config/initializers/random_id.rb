ca = ActiveRecord::ConnectionAdapters
if ca.const_defined? :PostgreSQLAdapter
  ca::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:primary_key] = 'bigint primary key'
end

if ca.const_defined? :AbstractMysqlAdapter
  ca::AbstractMysqlAdapter::NATIVE_DATABASE_TYPES[:primary_key] =
        'BIGINT UNSIGNED NULL PRIMARY KEY'
end

module ActiveRecord
  class Base
    include Concerns::RandomId
  end
end

module ActiveRecord
  class SchemaMigration < ActiveRecord::Base
    class << self
      def create_table(limit = nil)
        return if table_exists?
        version_options = { null: false }
        version_options[:limit] = limit if limit

        connection.create_table(table_name, id: :bigserial) do |t|
          t.column :version, :string, version_options
        end
        connection.add_index table_name, :version, unique: true, name: index_name
      end
    end
  end
end
