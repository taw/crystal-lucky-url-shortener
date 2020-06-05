class CreateShortcuts::V20200605010830 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Shortcut) do
      primary_key id : Int64
      add_timestamps
      add url : String
      add slug : String
      add visits : Int32
    end
  end

  def rollback
    drop table_for(Shortcut)
  end
end
