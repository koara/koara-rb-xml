task :default => 'test:unit'

require 'rake/testtask'

Rake::TestTask.new('test:unit') do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/*.rb'
  t.verbose = true
  t.warning = false
end