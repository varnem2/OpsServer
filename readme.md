# Tutorial

## Install into environment
cd into ether the MPMissions or missions folder. This folder is located in ~/Documents/Arma 3 - Other Profiles/{Your Profile Name}/missions or mpmissions

Install git. [https://git-scm.com/downloads](https://git-scm.com/downloads)

git config --global user.name "FIRST_NAME LAST_NAME" //Just use a name that's easily identifiable

git config --global user.email "MY_NAME@example.com" //You'll find this email in

###### https://github.com/settings/emails look under the section of Primary email address you'll see a huge long email with lots of numbers. Use that one.


git init //sets up the folder for github

git remote add origin https://github.com/varnem2/OpsServer.git //tells github where the remote repo is

git pull //refreshes the local repo to include the contents of the remote repo

git checkout master //checkouts the correct branch this can be set to any branch off the main repo


## Making an update

`git checkout -b <new branch name> ` //use this to make a new branch off the main code. Use a descriptive name so we know the purpose of the branch.

Often you will use underscores or cammel case to separate out words.
`
    Ex: 
        Update_ReadMe_With_Branching
        updateReadMeWithBranching
`

Make your changes however you see fit locally. Once finished or you wish to share your branch, you may do some of the following commands. Often this will be done through Eden.

`git add . `//this adds all the files both in the folder you're in and all the subfolders you are in.

` git commit -m "<you're message>"` //use this to add a message with your commit. The code get's complicated.. Add the message please.


##If you're making a map, or doing anything with the map, ensure that you view the miscellaneous folder's readme to make sure it is compattable with our server.

` git push origin <branch name>` //This will send all changes to the remote repo.


#### [Use a .gitIgnore to ignore the other directories.](https://stackoverflow.com/questions/27850222/what-is-gitignore-exactly)

## Once you're ready to submit your changes to the main branch again follow these instructions.


Log into github and request a new pull request.
![Github website has the button to make the pull request](https://storage.googleapis.com/cdn.thenewstack.io/media/2018/06/475ba6ad-screen-shot-2018-06-27-at-3.18.09-pm-1024x563.png)

Then you'll get to a screen like this.

![Create make options for pull request](https://storage.googleapis.com/cdn.thenewstack.io/media/2018/06/9545f137-prcreate-1024x627.png)

Citation: https://thenewstack.io/getting-legit-with-git-and-github-your-first-pull-request/