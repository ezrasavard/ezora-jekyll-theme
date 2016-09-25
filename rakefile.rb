# rakefile to automate creation & publication of Jekyll posts
# accepted commands:
# - (default) rake draft => prompt for a name, then create a draft with that name in /_drafts
# - rake publish => list all the drafts that are ready for publishing and prompt for which one to publish
# - rake publish all => publish all the drafts in /_drafts
# - credit to Lise Savard (www.github.com/lsav)

require 'time'

# Prompt for title & format it correctly
def get_input(str)
  print str
  STDIN.gets.strip
end

# Publish a draft
def publish_draft(source)
  # create new file with with timestamp in _posts directory
  cur_time = Time.now.getlocal("-07:00")
  target = "_posts/#{cur_time.strftime('%Y-%m-%d')}-#{source.gsub('_drafts/', '')}"
  File.open(target, 'w') do |file| file.write <<-EOS
---
date: #{Time.now.getlocal("-07:00")}
EOS
  end
  
  # copy draft over, but remove the first line
  File.readlines(source).drop(1).each do |line| 
    File.open(target, "a+") { |file| file.write(line) }
  end
  
  # delete the draft & return path to new post
  File.delete(source)
  target
end

# Create new draft
desc "Create a new draft."
task :draft do
  title = get_input('Post title: ')
  filename = title.downcase.gsub(' ', '-').gsub(/[^0-9a-z-]/i, '')
  path = File.join("_drafts", "#{filename}.md")
  if File.exist?(path)
    puts "Draft already exists at #{path}."
  else
    File.open(path, 'w') do |file| file.write <<-EOS
---
layout: post
title: #{title}
---
EOS
    end
  end
  system "c9 open #{path}"  # Open draft for editing
end

# Publish an existing draft
desc "Publish existing draft"
task :publish do
  drafts = Dir.glob("_drafts/*")
  num = drafts.length
  
  if num == 0
    answer = get_input('No drafts to publish. Create a new draft? ')
    if ['y', 'yes', 'Yes'].include? answer
      Rake::Task[':draft'].invoke
    end
  else
    # check if "all" command was passed
    if ARGV[1] == "all"
      task :all do ; end
      drafts.each do |draft|
        publish_draft(draft)
      end
      puts "Published #{num} drafts."
    else
      puts "Found #{num} drafts:"
      drafts.each_with_index { |val, index| puts "    #{index}: #{val.gsub('_drafts/', '')}" }
      source = drafts[get_input('Which draft would you like to publish? ').to_i]
      
      target = publish_draft(source)
      puts "Post created at #{target}"
    end
  end
end

# Deploy to "myblog" ssh target
# Define this behaviour in ~/.ssh/config by setting "Host" to "myblog" and
# configuring passwordless login
desc "Deploy to SSH target 'myblog' using Rsync and clean up deleted content"
task :deploy do
  source_dir = File.join(Dir.pwd, '_site', "*")
  destination_dir = 'public_html/ezrasavard.com/ezorademo'
  if Dir[source_dir].empty?
    puts "Error: empty directory cannot be deployed"
  else
    puts "Deploying!"
    sh "rsync -rtzh --checksum --delete #{source_dir} myblog:#{destination_dir}"
  end
end

# Default task is to make a new draft
task :default => [:draft]