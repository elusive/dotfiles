npm run 'demo-app'
cat /home/rnd/.npm/_logs/2017-07-31T16_30_48_194Z-debug.log
npm run 'demo-app'
code .
exit
cd projects/telemetry-runner/
./runner-mqtt 
cd projects/milestone1/
npm statr
npm start
git status
git add .
git commit -m "Implement real-time updates."
git commit --amend -m "Implement sensor deltas for active scan sessions."
git status
git flow feature publish
npm test
git flow feature finish
git status
git push origin develop
git pull -r origin develop
git push origin develop
npm start
git flow feature start "m1-wrapup"
git status
npm start
git status
git commit -a -m "Add overlay to loading bar. Fix sub issues for real-time delta processing."
git flow feature publish
git flow feature finish
git flow feature start "overlay"
git pull origin develop
git flow feature start "overlay"
npm install
npm test
npm start
npm test
git status
git add .
git rm package-lock.json
git rm package-lock.json -f
git status
git commit -m "Fix unit tests that use Material Overlay."
git flow feature publish
git flow feature finish
git pull -r origin master
git pull origin develop
git reset
git reset head
git rebase --abort
git status
git push origin develop
git pull origin develop
git status
git flow release start "v0.1.5"
git flow release finish 'drilldown-api'
git flow release start "v0.1.5"
git branch -d 'release/drilldown-api'
git branch
git branch -d feature/graphing
git flow release start "v0.1.5"
git status
git add .
git commit -m "Add version file with current version number."
git status
git flow release publish
npm start
npm test
git status
git commit -a -m "Fix overlay issue in build result."
git flow release publish
git checkout develop
git checkout release/v0.1.5 
git status
git flow release finish
git checkout master
git pull -r origin master
git status
git flow release finish
git checkout release/v0.1.5 
git flow release finish
git commit -a -m "Fix merge conflict in default service api url."
git status
git push origin master
git branch
git checkout release/v0.1.5 
git flow release finish
git push --tags
git push origin develop
git checkout master
git push origin master
git commit -a  -m "Merge conflict fix.

"
git push origin master
git checkout develop
git status
git push origin develop -f
cd ~/projects/milestone1/
git status
npm start
ls
cd projects/
ls
cd milestone1/
ls
cd ..
git clone git@bitbucket.org:genalyteinc/cloud-web-milestone2.git
cd cloud-web-milestone2/
ls
git status
git flow init
cd ..
ls
ssh-keygen -t rsa -C "jgilliland@rndgroup.com"
cd ~/.ssh
ls
cd ~/projects/
ls
cat ./bb_rsa.pub | xclip -sel clip
cat ./bb_rsa | xclip -sel clip
cat ./bb_rsa.pub | xclip -sel clip
ls
cd sandbox/
ls
git clone https://github.com/adriancarriger/clean-to-the-core.git
cd clean-to-the-core/
code .
node -v
npm update -g node
node -v
cd src/app/core
ls
cd services/
ng g service --flat --spec results
cd ..
cd results/
ng g component --flat --spec results
code .
git status
git add .
git commit -m "Columns switch based upon route data."
git status
git checkout develop
git flow feature start events
cd src/app
ls
ng g module events --spec
cd events
ls
ng g component events --spec  --flat
git status
cd ..
cd .
cd ..
git status
git add .
git commit -m "Create events module and component."
git status
git flow feature publish
git status
git branch
git checkout feature/review-list 
git status
npm test
cd src/app/results/review
ng g component reason-dialog  --spec -m "./results.module.ts"
ng g component reason-dialog  --spec -m "../results.module.ts"
code .
cd projects/
ls
cd sandbox/
ls
cd ngio_specs/
cd ..
code .
cd ..
cd cloud-web-milestone2/
npm test
npm start
cd ~/projects/cloud-web-milestone2/
git status
git add .
git commit "Add review results component with disconnected datasource."
git commit -m "Add review results component with disconnected datasource."
git status
npm start
code .
tsc -v
java -jar swagger-codegen-cli-2.2.1.jar generate -i ./api.json -l typescript-angular2
ls
java -jar swagger-codegen-cli-2.2.1.jar generate -i ./api.json -l typescript-angular2 -o ./temp
java -jar swagger-codegen-cli-2.2.1.jar generate -i ./api.json -l typescript-angular2 -o ./temp --config
java -jar swagger-codegen-cli-2.2.1.jar generate -i ./api.json -l typescript-angular2 -o ./temp --config variables.ts
npm test
cd ~/projects/cloud-web-milestone2/
npm test
git status
git add .
git status
git commit -a -m "Integrate API for results and review."
git status
git flow feature publish
npm run test:ci
git flow feature start reason
git status
npm start
npm run test:ci
exit
cd projects/cloud-web-milestone2/
npm start
git status
git flow feature finish
git push develop
git push
git status
git commit -a -m "Fix paging parameters."
git checkout develop
git merge feature/reason
git push 
git checkout feature/reason 
git status
git commit -a -m "Fix selected rows and min-height on samples."
git checkout develop
git merge feature/reason 
git push
git checkout feature/reason 
git status
git add .
git status
git checkout src/app/core/nav/nav.component.html
git status
git stash
git checkout develop
git flow feature start stagin
git stash apply
git add .
git commit -m "Switch to docker image with AWS CLI already present."
git statu
git status
git add .
git commit -m "Add build pipeline for test branch."
git status
git flow feature publish
node -v
npm run test:ci
npm -v
dosudo fdisk /dev/sda
sudo reboot
cd ~/projects/sandbox/
code .
resize2fs
df
resize2fs /dev/sda1
sudo resize2fs /dev/sda1
df
cd ~/projects/cloud-web-milestone2/
ng build -aot
ng build --aot
npm run test:ci
npm test
npm test --sourcemaps=false
ng test --sourcemaps=false
npm test
npm run test:ci
git status --porcelain
git status
git add .
git commit -m "Fixed unit tests broken by recent additions and demo prep."
git status --porcelain
npm run test:ci
ng build --aot
ls
git status
git add .
git commit -m "Fix AOT build. Remove duplicated unit tests for global events service."
git flow feature publish
git status
cd ~/projects/cloud-web-milestone2/
git lg
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git lg
git status
git commit -a -m "RNDGROUP-113 Test linking to JIRA Issues."
git push
git flow feature publish
git status
git add .
git commit --amend
git flow feature publish
git remote
git remote -v
git flow feature publish
git push origin feature/stagin
exit
cd ~/.aws
ls
cat ./config
cat ./credentials 
cd src/app/core/
cd services/
ng g service window --spec
docker exec web rake test
docker exec web /bin/ash
docker exec -it web /bin/ash
clear
docker exec web rake db:create
clear
docker exec web rake db:create
clear
docker exec web rake db:create
clear
docker-compose run web rake db:create
cd Projects/mentoring/wilson/
cd nomster/
docker-compose run web rake db:create
docker-compose run web rake db:migrate
cd ~
ls
la
ls -a
git clone git@github.com:elusive/dotfiles.git
cd dotfiles/
ls
la
./makesymlinks.sh 
code .
sudo chsh -s $(which zsh)
exit
docker ps
exit
ls
export ZSH_THEME="robbyrussell"
echo $ZSH_THEME
ls
cd dotfiles
git status
ln -s zshrc  ~/.zshrc
git status
git push origin master
git commit -a -m "add zshrc to dotfiles, and install.sh for ohmyzsh"
git push origin master
git status
git add .
git commit -m "New install sh for ohmyzsh curl install.  not executed automatically yet."
git push origin master
exit
zsh
zsh -v
ls
cd Down
cd Downloads/
ls
git clone https://github.com/powerline/fonts.git
ls
cd fonts/
./install.sh
zsh
exit
zsh
cd dotfiles
ls
vim zshrc
cd docker
ls
cd docker-env
ls
cd ..
ls
cheat cp
pip -v
sudo apt install python-pip
sudo pip install cheat
export CHEAT_COLORS=true
export CHEAT_PATH="~/Documents/cheatsheets"
cheat
cheat cp
cheat copy
cd ../Projects/mentoring/wilson/
ls
cd nomster/
git status
git branch
git commit -a -m "docker file for postgres"
git push origin john
ssh-keygen
ssh-keygen -t rsa 4096 -C "johncgilliland@gmail.com"
ssh-keygen -t rsa -b 4096 -C "johncgilliland@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
vi ~/.zshrc
cd Projects/mentoring/wilson/nomster/
git push origin john
git set-url origin https://github.com/alwaysconfused1/nomster.git
git origin set-url https://github.com/alwaysconfused1/nomster.git
git remote set-url origin https://github.com/alwaysconfused1/nomster.git
git push origin john
cd ..
ls
cd crystal/
ls
cd ruby-
cd ruby-nomster/
ls
git stsatus
git status
cd config
ls
cp application.yml ~/Projects/mentoring/crystal/
cd ..
ls
cd ruby-nomster/
git status
git rm app/mailers/temp.rb
rm app/mailers/temp.rb
git checkout app/mailers/notification_mailer.rb
git status
git pull origin/master
git remote set-url https://github.com/oOCrystalOo/ruby-nomster.git
git remote
git remote origin
git origin
git remote
git remote get-url origin
git pull origin master
zsh
cd ~
ls
la
exit
la
rm .zshrc
la
cd dotfiles
ln /?
cheat ln
cd ..
ln -s .dotfiles/zshrc .zshrc
la
vi .zshrc
la
la -al
xit
exit
docker ps
zsh
exit
zsh
vim docker/docker-env/services/postgres/dockerfile 
docker run --rm -it -p 5432:5432 postgres-temp
docker build -t postgres-temp docker/docker-env/services/postgres/.
docker run --rm -it -p 5432:5432 postgres-temp
docker build -t postgres-temp docker/docker-env/services/postgres/.
docker run --rm -it -p 5432:5432 postgres-temp
docker ps
docker build -t postgres-temp docker/docker-env/services/postgres/.
docker run --rm -it -p 5432:5432 postgres-temp /bin/ash
docker run --rm -p 5432:5432 postgres-temp
docker run --rm --name dbhost -p 5432:5432 postgres-temp
vi .zshrc
exit
vim /etc/passwd
zsh
exit
sudo chsh -s $(which zsh)
exit
chsh -s $(which zsh)
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
ls -al
rm .zshrc
ln -s dotfiles/zshrc .zshrc
la
zsh
dcr web rake db:create
dcr web rake db:migrate
dc down
zsh
docker ps
dcr /bin/ash
dcr web /bin/ash
dcr rake db:create
dcr web db:create
dcr web rake db:create
dc down
docker ps
dc up
dc build
ls
cd crystal
ls
dc build
clear
zsh
vim ~/tmux.conf
cd ~
ls
la
exit
