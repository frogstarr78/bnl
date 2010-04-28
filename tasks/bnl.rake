namespace :bnl do
  file File.join(Dir.pwd, %w(lib bnl dsl.rb)) do
    Rake::Task["bnl:generate_parser_lib"].execute
  end

  task :generate_parser_lib do
    require 'ftools'
    cwd = Dir.pwd
    FileUtils.chdir 'lib/bnl'
    system 'tt dsl.treetop'
    FileUtils
  end
end
