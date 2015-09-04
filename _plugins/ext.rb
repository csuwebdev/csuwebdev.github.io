require "jekyll-assets"
require "sprockets"

gemspec = Gem::Specification.find_by_name "bootstrap-sass"

%w(images fonts javascripts stylesheets).each do |asset|
  Sprockets.append_path File.join(gemspec.gem_dir, "assets", asset)
end

Bundler.require(:rails_assets)

if defined? RailsAssets
  RailsAssets.components.flat_map(&:load_paths).each do |path|
    Sprockets.append_path(path)
  end
end
