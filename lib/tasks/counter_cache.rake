desc 'Counter cache for project has many tasks'

task task_counter: :environment do
  Project.reset_column_information
  Project.find_each do |x|
    Project.reset_counters(x.id, :tasks)
  end  
end
