require 'rake'
require 'fileutils'
require 'date'

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

def compile_elisp(file, load_paths = [])
  command = "emacs -batch -Q -L . -L #{load_paths.join(" -L ")} -f batch-byte-compile #{file}"
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

task :compile do
  Dir.chdir('src/') do
    Dir["init/*.el", "el-get-packages-conf/*.el","personal-conf/*.el", "init.el"].each do |f|
      remove_compiled_file(f)
      compile_elisp(f, Dir["init/*.el", "el-get/*", "el-get/package/elpa/*"])
    end
  end
end
