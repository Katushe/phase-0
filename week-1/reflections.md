#### 1.1 Think About Time

**1.  Which time management and productivity ideas did you learn about?**

This is maybe a strange thing to zero in on, but when reading the meditation article, I noticed in one of the images they showed a person knitting. Now, I’ve tried the kind of meditation where you sit still, close your eyes, and try to focus many times and it never worked for me, I get too restless. However, I knit a lot and find it quite relaxing but never thought about it as a form of meditation before. So I was intrigued by the idea of “moving meditation” and tried to find out more about it, as I feel it might work better for me than other forms of meditation. One of the techniques I learned about is “walking meditation” which is where you walk slowly and continuously while focusing on the movement of your body. There’s also “dance meditation”, where you focus on the rhythm of music and just let go, jumping and moving around without overthinking. Knitting probably falls under “hand movement meditation”, where you focus on moving your hands mindfully. And there’s many more!

**2.  What is "Time Boxing?" How can you use it in Phase 0?**

Time Boxing is when you choose a certain amount of time to work for, say half an hour, to work towards completing a goal, and then reflecting on what was done during that time. You don’t expect to complete the goal in that allotted time, the focus is more on just working steadily during that time. The purpose is to move away from the practice of just working until something is completed and then seeing how much time it took. By working for a set period of time and then reflecting on what you did, it gives you a little break, which can help to clear your mind, and also makes it easier to evaluate whether you’re going in the right direction or if you should begin a new approach when you start working again.

**3.  How do you manage your time currently?**

I make myself a schedule ahead of time of what I need to get done, and when I should get it done by, and then try my hardest to stick to that schedule. I always make sure to put aside some time to do something I enjoy even if I have a lot to get done, usually I give myself some time at the end of the day to knit while watching something on Netflix, or read a book.

**4.  Is your current strategy working? If not, why not?**

Sometimes it does, and sometimes it doesn’t. When I’m feeling really motivated and I get into the zone, I am able to follow along with my schedule and everything works out. Every now and then, though, when something ends up taking a lot more time than I expect and throws my schedule out of whack, it adds to my stress level, and I fall even more behind.

**5.  Can/will you employ any of them? If so, how?**

I do still want to plan a schedule ahead because without giving myself some structure I tend to procrastinate and then everything just piles up. However, I will try to focus more on making progress rather than setting myself a deadline for finishing something, as I am sure it’s going to get harder and harder to gauge how much time something will take, and I don’t want to stress myself out if I can’t stick to my schedule. I definitely plan to keep setting time aside for my knitting as a stress reliever (plus Christmas is coming up, and I love to knit gifts for friends :) ).

**6.  What is your overall plan for Phase 0 time management?**

I am going to make myself a schedule to work with, but instead of listing what things I need to get done and setting deadlines for myself, I am going to set specific time windows for each day that I will dedicate to working on tasks for DBC. I am also going to try to integrate a time boxing/pomodoro technique, where I work for a set period of time and then stop to reflect a bit on what I’ve accomplished, so I can focus on what I did do rather than what I didn’t finish. I am also going to take more scheduled breaks, as I tend to just take work until I really feel like I need a break (which usually leads to me getting distracted too often).

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

__2. What struggles did you have setting up git and GitHub? What did you learn in the process?__

I have used both git and Github before, and so far it has been a review of things I have already done with them so I have not met any major struggles so far. I already had a Github account set up, but I did use this opportunity to clean it up by getting rid of a couple of repositories I don’t need anymore. I also already had git set up on my computer but as it has been a while, I removed it and added it again just to remind myself if the process, and I did not hit any snags.
