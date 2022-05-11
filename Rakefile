desc 'This task do something'
task :test do
  puts 'Hello'
end

desc 'This task do something2'
task :test2 do
  sh 'cucumber'
end

desc 'Invoking other tasks'
task :test do
  %W[create_dir, run_cucumber].each do |cmd|
    sh "rake #{cmd}"
  end
end

desc 'Creating a directory'
task :create_dir do
  Dir.mkdir 'reporting' unless Dir.exist? 'reporting'
end

desc 'Running cucucmber'
task :run_cucumber do
  sh 'cucumber features/sign_in.feature --format json --out "reporting/cucumber.json"'
end

desc 'Parallel run'
task :run_parallel do
  started_at = Time.now
  puts " [35m Started at #{started_at}  [0m"

  sh 'rake create_dir'

  t1 = Thread.new(sh 'cucumber features/sign_in.feature -p html_report')
  t2 = Thread.new(sh 'cucumber features/api.feature -p json_report')

  t1.join
  t2.join

  finished_at = Time.now
  run_took = Time.at(started_at - finished_at).utc.strftime('%H:%M:%S')
  puts " [35m Finished at #{finished_at}  [0m"
  puts " [35m Run took #{run_took}  [0m"
end