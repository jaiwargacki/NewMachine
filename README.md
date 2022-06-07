# Setting up a new mac
### Install Homebrew  
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### Install git
```
brew install git
```
### Clone this repo
```
git clone https://github.com/jaiwargacki/NewMachine.git
```
### Set up git
```
sh git-and-ssh-config.sh "<your name>" <your email>
```
When prompted do not enter a name, you may enter a password if you would like. 
You should see 
Go [here](https://github.com/settings/keys) and upload the generated ssh key.
