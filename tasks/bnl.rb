namespace :bnl do
  file File.join(Dir.pwd, %w(lib bnl parser.rb)) do
    Rake::Task["generate_parser_lib"].execute
  end

  task :generate_parser_lib do
    require 'ftools'
    cwd = Dir.pwd
    FileUtils.chdir 'lib/bnl'
    system 'tt parser.treetop'
    FileUtils
  end
end
