require 'rake'

desc 'Installs dotfiles'
task :install do
  Dir.glob('*/**{.symlink}').each do |link|
    file = link.split('/').last.split('.symlink').last
    target = "#{Dir.home}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      decision = prompt_decision_on_file target
      next unless decision
    end

    sym link, target
  end
end

desc 'Uninstall dotfiles'
task :uninstall do
  Dir.glob('**//*.symlink').each do |link|
    file = link.split('/').last.split('.symlink').last
    target = "#{Dir.home}/.#{file}"

    if File.symlink? target
      FileUtils.rm target
    end

    if File.exists? "#{Dir.home}/.#{file}.backup"
      restore file
    end
  end
end

def prompt_decision_on_file target
  loop do
    puts "File already exists: #{link}. [s]kip, [o]verwrite, [b]ackup"
    case STDIN.gets.chomp
    when 'o'
      overwrite target
      return true
    when 'b' 
      backup target
      return true
    when 's'
      return false
    else
      puts "Invalid selection"
    end
  end
end

def overwrite target
  FileUtils.rm_rf target
end

def backup target
  `mv #{target} #{target}.backup`
end

def restore file
  `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"`
end

def sym link, target
  FileUtils.ln_s "#{ENV['PWD']}/#{link}", target
end

task default: 'install'
