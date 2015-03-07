require 'time'
require 'rake-jekyll'
require 'html/proofer'

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

  # Run this command to build the site.
  t.jekyll_build = ->(dest_dir) {
    Rake.sh "bundle exec jekyll build --destination #{dest_dir}"
    HTML::Proofer.new(dest_dir, {
      :href_ignore => [
        "#"
      ],
      :alt_ignore => [
        /gc_button1_en/
      ]
    }).run
  }
end
