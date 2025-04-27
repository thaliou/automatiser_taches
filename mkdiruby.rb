#!/usr/bin/env ruby

# Vérifie qu'un seul argument est donné
if ARGV.length != 1
  puts "Usage: mkdiruby nom_du_projet"
  exit
end

project_name = ARGV[0]
project_path = File.join(Dir.pwd, project_name)

# Crée le dossier principal du projet
Dir.mkdir(project_path)
puts "✅ Dossier '#{project_name}' créé dans #{Dir.pwd}"

# Se déplacer dans le dossier du projet
Dir.chdir(project_path)

# Crée le Gemfile avec les gems de TS4A
File.open("Gemfile", "w") do |f|
  f.puts "source 'https://rubygems.org'"
  f.puts
  f.puts "gem 'dotenv'"
  f.puts "gem 'rspec'"
  f.puts "gem 'pry'"
  f.puts "gem 'rubocop', require: false"
  f.close
end
puts "✅ Gemfile créé."

# Crée un fichier .env
File.open(".env", "w") do |f|
  f.puts "# Tes variables d'environnement ici"
  f.close
end
puts "✅ Fichier .env créé."

# Ajoute .env au .gitignore
File.open(".gitignore", "a") do |f|
  f.puts ".env"
  f.close
end
puts "✅ .env ajouté au .gitignore."

# Crée le dossier lib
Dir.mkdir("lib")
puts "✅ Dossier lib créé."

# Initialise RSpec
system("rspec --init")
puts "✅ RSpec initialisé."

# Crée le fichier README.md
File.open("README.md", "w") do |f|
  f.puts "# #{project_name.capitalize}"
  f.puts
  f.puts "Ce projet est un programme Ruby."
  f.close
end
puts "✅ README.md créé."

# Initialise Git
system("git init")
puts "✅ Dépôt Git initialisé."

puts "🎉 Projet Ruby '#{project_name}' prêt !"
