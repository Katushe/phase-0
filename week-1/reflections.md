#### 1.1 Think About Time
#### 1.2 The Command Line
**1. What is a shell? What is "bash"**
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