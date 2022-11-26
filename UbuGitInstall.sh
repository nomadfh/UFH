#/bin/bash
#Install git and gh and vim
sudo apt install git gh vim
#Set up git identity
git config --global user.name "nomadfh"
git config --global user.email adenjsdad@gmail.com
#Set default editor
git config --global core.editor vim
#authenticate login
gh auth login &&
mkdir GitHub
cd GitHub
clone PopOS repo from my github
git clone https://github.com/nomadfh/UFH
