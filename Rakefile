require "bundler/gem_tasks"

desc "Update asset files for Rails"
task :update_assets do

  Dir.glob(File.join('app/assets/stylesheets', '*.css')).each do |css_file_name|
    # rename css file
    css_file_name_out = css_file_name + '.scss'
    File.rename(css_file_name, css_file_name_out)
    # update image reference
    file_content = ''
    File.open(css_file_name_out, "r:UTF-8") do |file|
      file_content = file.read
    end
    file_content.gsub! /url\(([A-Za-z0-9_-]*\.)(png|gif)\)/ do
      "image-url(\"jquery-modal/#{$1}#{$2}\")"
    end
    File.open(css_file_name_out, 'w') do |file|
      file << file_content
    end
    puts "Renamed and updated #{css_file_name_out}"
  end

end