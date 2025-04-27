# automatiser_taches

Compte Rendu — Projet google_searcher.rb
🎯 Objectif

Créer un petit programme Ruby qui permet de lancer rapidement une recherche Google directement depuis le terminal.
🛠 Technologies utilisées

    Ruby (langage principal)

    Gem Launchy (pour ouvrir le navigateur)

    Bash/Zsh (pour automatiser avec un alias)

🧩 Fonctionnement

    L'utilisateur exécute la commande :

    search how to center a div

    Le programme google_searcher.rb :

        Récupère les arguments passés en ligne de commande (ARGV).

        Construit une URL de recherche Google à partir de ces mots-clés.

        Ouvre un nouvel onglet dans le navigateur par défaut avec la recherche.

    Un alias search a été ajouté dans le fichier .bashrc ou .zshrc pour simplifier l'utilisation.

🛠️ Mise en place
1. Écriture du programme Ruby

Fichier : google_searcher.rb

require 'launchy'

if ARGV.empty?
  puts "Utilisation : ruby google_searcher.rb votre recherche"
  exit
end

requete = ARGV.join('+')
url = "https://www.google.com/search?q=#{requete}"

Launchy.open(url)

2. Installation de la gem launchy

gem install launchy

3. Création de l'alias

Dans le fichier ~/.bashrc ou ~/.zshrc, ajouter :

alias search='ruby /home/aliou-thiam/etp4a/jour5_semaine3/automatiser_taches/google_searcher.rb'

Puis recharger le fichier :

source ~/.bashrc
# ou
source ~/.zshrc

4. Utilisation

Exemple d'utilisation simple :

search how to center a div

Ce qui ouvrira automatiquement une recherche Google correspondante dans le navigateur.
🚀 Résultats

    Ouverture rapide d'une recherche Google depuis le terminal.

    Gain de temps pour les recherches fréquentes.

📋 Remarques

    L'alias doit être créé avec l'utilisateur normal, pas en root.

    Attention à bien vérifier que la gem launchy est installée et fonctionnelle.

    Le fichier .bashrc ou .zshrc doit être rechargé après modification.

Projet réussi avec succès ! 🔥

📦 mkdiruby

mkdiruby est un petit script Ruby qui automatise la création d'un projet Ruby de base.

Il fonctionne comme la commande mkdir, mais en plus de créer un dossier, il prépare immédiatement un environnement de travail complet pour Ruby avec :

    Un Gemfile avec les gems standards (dotenv, rspec, pry, rubocop)

    L'initialisation de Git

    Un fichier .env et un .gitignore

    Un dossier lib/

    La configuration de RSpec

    Un README.md de base

🚀 Installation

    Copiez le fichier mkdiruby.rb où vous le souhaitez (par exemple : ~/etp4a/jour5_semaine3/automatiser_taches/).

    Rendez-le exécutable :

chmod +x ~/etp4a/jour5_semaine3/automatiser_taches/mkdiruby.rb

    Créez un alias pour l'appeler facilement :

Ajoutez cette ligne dans votre .bashrc ou .zshrc :

alias mkdiruby='ruby ~/etp4a/jour5_semaine3/automatiser_taches/mkdiruby.rb'

Puis rechargez votre terminal :

source ~/.bashrc
# ou
source ~/.zshrc

⚡ Utilisation

Placez-vous dans le dossier où vous voulez créer votre projet Ruby, puis tapez :

mkdiruby nom_du_projet

Exemple :

mkdiruby super_app

Cela va automatiquement créer :

./super_app/
├── Gemfile
├── .env
├── .gitignore
├── lib/
├── spec/
├── .rspec
├── spec/spec_helper.rb
└── README.md

🛠 Dépendances

    Ruby installé sur votre machine

    Bundler (gem install bundler)

    RSpec (gem install rspec)

✨ Pourquoi utiliser mkdiruby ?

    Gagnez du temps à chaque nouveau projet Ruby.

    Standardisez votre environnement de travail.

    Évitez d'oublier des étapes importantes (git init, .env, etc).

Créé avec ❤️ pour automatiser les projets Ruby.
