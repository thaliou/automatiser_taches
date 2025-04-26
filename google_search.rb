#!/usr/bin/env ruby
require 'launchy'

# Vérifie si l'utilisateur a fourni des arguments
if ARGV.empty?
  puts "Utilisation : ruby google_searcher.rb votre recherche"
  puts "Exemple : ruby google_searcher.rb how to center a div"
  exit
end

# Construction de la recherche
requete = ARGV.join('+')
url = "https://www.google.com/search?q=#{requete}"

# Ouvre l'URL dans le navigateur
Launchy.open(url)
