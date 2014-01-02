require 'rake'
require 'fileutils'
require 'date'
require 'erb'

task :copy do
  system "mkdir -p old"
  system "cp -R ~/.emacs.d/* #{Dir.pwd}/old/"
end

task :old do
  system "rm $HOME/.emacs.d"
  system "ln -s #{Dir.pwd}/old $HOME/.emacs.d"
end

task :new do
  puts "rm -rf -I $HOME/.emacs.d"
  system "rm -rf -I $HOME/.emacs.d"
  system "ln -s #{Dir.pwd}/src $HOME/.emacs.d"
end

def compile_elisp(file, load_paths = [], load_files = [])
  command = "emacs -batch -Q -L . -L #{load_paths.join(" -L ")} #{load_files.empty? ? "" : " -l "+ load_files.join(" -l ") } -f batch-byte-compile #{file}"
  puts command
  system command
end

def remove_compiled_file(file)
  begin
    puts file + "c"
    FileUtils.rm(file + "c")
  rescue
  end
end

def get_el_get_packages
  open('src/init/el-get-conf.el') do |f| 
    conf = f.read
    packages_string = conf.match(/\(defvar my-el-get-packages.*?\((.*?)\).*?\)/m).captures[0]
    packages_string.each_line.to_a.map(&:strip).select{|pack| not pack.empty? }
  end
end

def render_readme(packages)
  @el_get_packages = packages
  readme = open('misc/README.md.erb', 'r') do |f| 
    template = ERB.new(f.read, nil, '<>')
    template.result(binding)
  end
  open('README.md', 'w+') do |f|
    f.puts readme
  end
end

task :default => [:clean, :compile]

task :compile do
  Dir.chdir('src/') do
    Dir["init/*.el", "el-get-packages-conf/*.el","personal-conf/*.el", "init.el"].each do |f|
      next if f == "init/environment.el"
      remove_compiled_file(f)
      compile_elisp(f, Dir["init/", "el-get/*", "el-get/package/elpa/*"], ["init/initialize.el"])
    end
  end
end

task :clean do
  Dir.chdir('src/') do
    Dir["init/*.el", "el-get-packages-conf/*.el","personal-conf/*.el", "init.el"].each do |f|
      next if f == "init/environment.el"
      remove_compiled_file(f)
    end
  end
end

task :gen_readme do
  render_readme(get_el_get_packages)
end
