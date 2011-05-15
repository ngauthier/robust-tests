# If you're on 1.8.7, comment out everything in this file
namespace :cover_me do
  task :report do
    require 'cover_me'
    CoverMe.complete!
  end
end

task :test do
  Rake::Task['cover_me:report'].invoke
end
