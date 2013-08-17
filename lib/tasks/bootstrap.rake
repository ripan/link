# namespace :tomtom do
#   desc "Recreate database. Ensures all the necessary bootstrap data is inserted."
#   task :bootstrap => :environment do
#     # system "rake db:drop"
#     # system "rake db:create"
#     # system "rake db:migrate"
#     # system "rake db:seed"
#   end
# end


namespace :db do
  desc "create, migrate and seed"
  task :bootstrap => [:drop,:create,:migrate] do
  end
end