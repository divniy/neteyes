namespace :db do
  desc "Fill database with sample data"
  namespace :desk do
    task :push => :environment do
      FactoryGirl.create_list(:desk, 4)
    end
    task :repush do
      Rake::Task['db:reset'].invoke
      FactoryGirl.create_list(:desk, 4)
    end
    task :drop do
      Rake::Task['db:reset'].invoke
    end
  end
end