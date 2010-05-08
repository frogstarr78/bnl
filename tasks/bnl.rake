namespace :bnl do
  file File.join(Dir.pwd, %w(lib bnl dsl.treetop)) do
    Rake::Task["bnl:generate_parser_lib"].execute
  end

  file File.join(Dir.pwd, %w(lib bnl dsl.rb)) do
    Rake::Task["bnl:generate_parser_lib"].execute
  end

  task :rm_lib do
    %x{rm "#{File.join(%w(lib bnl dsl.rb))}"}
  end

  desc "Generate Parser from treetop"
  task :generate_parser_lib do
    %x{tt #{File.join(%w(lib bnl dsl.treetop))}}
  end
end
