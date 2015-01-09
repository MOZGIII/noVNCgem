require 'bundler/gem_tasks'

ROOT = File.dirname(__FILE__)

task :copy_files_from_git do
  srcdir = ARGV[1]
  unless srcdir
    STDERR.puts "Usage: rake #{ARGV[0]} [noVNC path]"
    STDERR.puts 'Pass cloned noVNC git repo path as an argument!'
    exit 2
  end

  srcdir = Pathname.new(srcdir)
  unless File.exist?(srcdir + '.git')
    STDERR.puts "No .git directory in #{srcdir}"
    exit 2
  end

  Dir.glob(srcdir + 'include/*.js').each do |jsf|
    cp jsf, "#{ROOT}/vendor/assets/javascripts/noVNC"
  end

  Dir.glob(srcdir + 'include/*.css').each do |csf|
    cp csf, "#{ROOT}/vendor/assets/stylesheets"
  end

  Dir.glob(srcdir + 'include/*.{ttf,woff}').each do |ff|
    cp ff, "#{ROOT}/vendor/assets/fonts"
  end

  Dir.glob(srcdir + 'images/*.png').each do |imgf|
    cp imgf, "#{ROOT}/vendor/assets/images"
  end
end

task :remove_bundled_files do
  Dir.glob("#{ROOT}/vendor/assets/javascripts/noVNC/*.js").each do |jsf|
    rm jsf
  end

  Dir.glob("#{ROOT}/vendor/assets/stylesheets/*.css").each do |csf|
    rm csf
  end

  Dir.glob("#{ROOT}/vendor/assets/fonts/*.{ttf,woff}").each do |ff|
    rm ff
  end

  Dir.glob("#{ROOT}/vendor/assets/images/*.png").each do |imgf|
    rm imgf
  end
end
