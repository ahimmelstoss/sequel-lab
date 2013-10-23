#need to make a new migration, not add to a previous, because sequel keeps track of already ran migrations

#migration files are numbered to make sure they are ran in that order, incase your database is lost and you need to run them all again

Sequel.migration do
  change do
    add_column :artists, :gender, String
  end
end

#sequel -m migrations -M 1 sqlite://artists.db --> rollback to the first migration if you don't want to run this one yet