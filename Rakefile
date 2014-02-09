require 'rake'
require 'fileutils'
require 'date'
require 'erb'

def execute(command)
  puts command
  system command
end

def compile_elisp(file, load_paths = [], load_files = [])
  execute "emacs -batch -Q -L . -L #{load_paths.join(" -L ")} #{load_files.empty? ? "" : " -l "+ load_files.join(" -l ") } -f batch-byte-compile #{file}"
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

task :copy do
  execute "mkdir -p old"
  execute "cp -R ~/.emacs.d/* #{Dir.pwd}/old/"
end

task :old do
  execute "rm $HOME/.emacs.d"
  execute "ln -s #{Dir.pwd}/old $HOME/.emacs.d"
end

task :link do
  execute "ln -s #{Dir.pwd}/src $HOME/.emacs.d"
end

task :delete_emacs_d_intractive do
  execute "rm -rf -I $HOME/.emacs.d"
end

task :delete_emacs_d do
  execute "rm -rf $HOME/.emacs.d"
end

task :new => [:delete_emacs_d_intractive, :link]

task :compile do
  Dir.chdir('src/') do
    Dir[
      "init/*.el",
      "el-get-packages-conf/*.el",
      "personal-conf/*.el",
      "init/my-setup.el",
      "init.el"
    ].each do |f|
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

task :create_new_enviroment_el do
  Dir.chdir('src/') do
    FileUtils.cp 'init/environment.el.sample', 'init/environment.el'
  end
end

task :initialize do
  Dir.chdir('src/') do
    Dir["init/*.el"].each do |f|
      next if f == "init/environment.el"
      remove_compiled_file(f)
    end
    compile_elisp('init/mysetup.el', Dir["init/", "el-get/*", "el-get/package/elpa/*"], ["init/initialize.el"])
  end
end

task :clean_el_get do
  Dir.chdir('src/') do
    execute 'rm -rf ./el-get'
  end
end

task :default => [:clean, :compile]
task :reset   => [:clean_el_get, :initialize, :default]
task :install => [:delete_emacs_d, :link, :create_new_enviroment_el, :default, :default, :test]

task :test, :file
task :test  do |task, args|
  test_files =  unless args.file
                  Dir["test/*.el"].join(" -l ")
                else
                  args.file
                end
  execute "emacs -batch -Q -L src -L test -l src/init.el"
  exit 1 unless $?.success?
  execute "emacs -batch -Q -L src -L test -l src/init.el -l #{test_files} -f ert-run-tests-batch-and-exit"
  exit 1 unless $?.success?
  puts "All tests successful."
end
