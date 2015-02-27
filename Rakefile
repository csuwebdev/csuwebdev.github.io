require 'time'
require 'rake-jekyll'

desc 'create  a new draft post'
task :new do
  title = ENV['title']

  if title.nil?
    puts 'A title is required. Usage: rake post title="Your Title"'
  else
    file = File.join(
      File.dirname(__FILE__),
      '_posts/' +
      Date.today.to_s + '-' + title.downcase.gsub(/[^\w]+/, '-') + '.md'
    )

    File.open(file, "w") do |f|
      f << <<-EOS.gsub(/^      /, '')
      ---
      layout: post
      title: #{title}
      published: false
      categories: blog
      ---

      EOS
    end
  end
end


Rake::Jekyll::GitDeployTask.new(:deploy) do |t|
   t.deploy_branch = 'master'
end
