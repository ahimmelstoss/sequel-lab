Sequel.migration do
  up do #what code to execute when the migration is run
  end

  down do #what code to execute when the migration is rolled back; like undo
  end
end

Sequel.migration do
  change do #change is short for do this and then undo the rollback; only works for migration sequel knows how to undo: eg:
  	create_table(:artists) do
  		primary_key :id #primary_key is a method name
      String :name
      String :genre
      Integer :age
      String :hometown
    end
    # remove_table
    # rename_table
    # remove_column
    # add_column
  end
end

#run for command line
#sequel -m migrations sqlite://artists.db
