#### 1.1 Think About Time
#### 1.2 The Command Line

**1. What is a shell? What is "bash"?**

A shell is the way you communicate with your computer. It’s a user interface that takes a user’s commands and interprets and translates them for the system to perform. Bash is a kind of shell, basically it is a particular “language” used to communicate with the system.

**2. What was the most challenging for you in going through the material?**

I’ve programmed using the command line before, so the concept wasn’t new to me, and I was familiar with quite a few of the commands already. There were a couple I wasn’t familiar with that I had to test out then memorize what they do. But the most challenging was regarding the $PATH environmental variable. I’ve encountered it before but never quite understood how it worked; this time I was able to research and finally find an explanation that cleared it up for me (basically when you run an executable, it will search in both its own directory and the directories specified in $PATH for the things that enable it to run instead of searching the whole computer.)

**3. Were you able to successfully use all of the commands?**

Yes. I had no trouble going through all the commands and running them on my computer.

**4. In your opinion, what are the most important commands and arguments to know?**

Help and man can be very useful; since there are so many commands to learn it’s an easy way to get more info when you’ve forgotten some details, plus they themselves are very easy to remember. Commands like cd/ls/.. are important because they allow you to move between directories and know what’s in them. These are pretty fundamental- no matter what you are trying to accomplish, chances are you will need to do this.

**5. Can you remember what each of the following does of the top of your head? Write what each does.**

*pwd* – print working directory; i.e. prints the path of the directory you’re currently in

*ls* – list; lists the current directory’s contents, can also follow with name of subdirectory to list its contents

*mv* – move; can use to rename a file/directory or to move it to a different directory

*cd* – change directory; changes your working directory, usually followed by the name of the directory

*../* – way to refer to the parent directory, usually used with cd to move up a directory

*touch* – creates a new file, would be followed by what you want to name the file

*mkdir* – make directory; makes a new directory/folder, would be followed by what you want to name the new directory

*less* – prints a screen’s worth of a text file, would be followed by the name of the file you want to print

*rmdir* – remove directory; deletes a directory, would be followed by the name of the directory you want to delete; only works on empty directories

*rm* – remove; deletes a file, would be followed by the name of the directory you want to delete

*help* – lists some shell commands and their arguments, can also follow with the name of the command to get more info

#### 1.4 Forking and Cloning
__1. If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?__

First, make sure you are signed in to Github before attempting any of these.

To create a new repository: Whether you are on the main page or any other page within Github, you should see a grey navigation bar across the top of the page with the Github octocat logo on the left side and a series of buttons on the right side, one of which is a “+” button. Click on it then select “New repository” from the pop-up and you will be taken to the page for creating a new repository. On this page you can give your repository a name, description, choose whether it will be public or private, add a license, and a few other options. Then hit “create repository” and it will take you to your new repository’s page.

To fork a repository: Navigate to the URL of the repository you would like to fork. Just beneath the grey navigation bar on the right side, you should see three options, the rightmost being “fork”. Click this and it should create a copy of the repository on your own account and take you to its page.

To clone a repository: On the repository’s Github page, there should be a box labeled “HTTPS” with the repo’s URL in it. Copy this URL. Then, in your command line, make sure you are in the directory you want the repository to be in, otherwise navigate to it. Type in “git clone” followed by the URL you just copied and it should be cloned to your computer. You may be prompted to enter in your Github username/password to authenticate.

You would fork a repository instead of creating a new one when you want to work on someone else’s existing repository (you cannot fork your own repositories). Forking that repository essentially creates your own copy of it, so you can make changes to the files without affecting the original repository. You can either continue to keep them separate or, you can request that the owner of the original repository adds your changes to the original (you cannot add your changes to the original on your own).

__ 2.What struggles did you have setting up git and GitHub? What did you learn in the process?__

I have used both git and Github before, and so far it has been a review of things I have already done with them so I have not met any major struggles so far. I already had a Github account set up, but I did use this opportunity to clean it up by getting rid of a couple of repositories I don’t need anymore. I also already had git set up on my computer but as it has been a while, I removed it and added it again just to remind myself if the process, and I did not hit any snags.
