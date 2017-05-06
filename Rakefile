require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/lib/arrayie/*_test.rb']
  t.verbose = true
end

task default: :test
