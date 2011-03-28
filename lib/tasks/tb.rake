require 'rake/testtask'

namespace :tb do
  
  # the #migrate_extensions method bypasses the extension migration task
  
  desc "Run all extension migrations in a sequence that respects their dependencies"
  task :migrate => :environment do
    require 'radiant/extension_migrator'
    %w{reader taggable paperclipped}.each do |t| 
      task = "radiant:extensions:#{t}:migrate"
      Rake::Task[task].invoke
    end
    Radiant::ExtensionMigrator.migrate_extensions
  end

end


# Load any custom rakefiles from extensions
[RAILS_ROOT, RADIANT_ROOT].uniq.each do |root|
  Dir[root + '/vendor/extensions/*/lib/tasks/*.rake'].sort.each { |ext| load ext }
end