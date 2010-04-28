namespace :bnl do
  file File.join(Dir.pwd, %w(lib bnl dsl.rb)) do
    Rake::Task["bnl:generate_parser_lib"].execute
  end

  desc "Generate Parser from treetop"
  task :generate_parser_lib do
    %x{tt #{File.join(%w(lib bnl dsl.treetop))}}
  end
end
