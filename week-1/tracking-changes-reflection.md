**How does tracking and adding changes make developers' lives easier?**

When you have a big project, there's usually a lot of files involved, so using git to track changes helps to keep everything more organized and to keep a history of what has been changed when you go to commit.

**What is a commit?**

A commit is the way you save your work; it keeps a version of your current files/code. Then, if you ever make a change you don't like or that breaks your code, you can go back to a version from a previous commit instead of having to manually get rid of those changes.

**What are the best practices for commit messages?**

One best practice that I foresee giving me trouble is writing changes in imperative tense instead of past tense or present tense (e.g. add not added or adds), since it just seems more natural to write in past tense. Other best practices include first writing a short summary followed by a more indepth description of what you changed, and wrapping your text to 72 columns so it doesn't run off the side of the page and require scrolling.

**What does the HEAD^ argument mean?**

HEAD is used to refer to commits. HEAD on its own refers to your current commit while HEAD^ is your previous commit. This argument is helpful if you've just commited something but realized you don't like the change and want to return to the previous commit using "git reset --soft HEAD^".

**What are the 3 stages of a git change and how do you move a file from one stage to the other**

The first stage is untracked changes, which is when you create a new file or edit a new file that has not been added before. To move to the next stage you must "git add" that file to track it.

The next stage is tracked changes, which is when you make a new change to a file that has previously been added. To move to the next stage you must "git add" that file to stage it.

The next stage is staged changes, which is when you've done a "git add" on all your files and they're ready to be commited. So you can now actually commit them with "git commit".

**Write a handy cheatsheet of the commands you need to commit your changes?**

*git status* - tells you which files are tracked/untracked, which changes have been staged, which branch you're working on.

*git add .* - use to alert git that you have made changes (called "staging")

*git commit -m "commit message"* - creates a snapsnot of your files along with a message of
what you have changed.

*git push origin new-branch-name* - sends the commit to a remote repository, i.e. Github; the "origin new-branch-name" is sending it to a new branch instead of to the master branch

**What is a pull request and how do you create and merge one?**

A pull request is used in Github. Instead of automatically adding changes to the existing code, a request to add those changes is sent to the owner(s) of the repository. The owner(s) can then look over the code before merging.

Pull requests can only be created when changes are pushed to a new branch (pushes to the master branch are automatically added). When a push has been made to a new branch, on the repo's Github page there should be a notification about the push with a button to "compare & pull request". Otherwise there is a "new pull request" button that then allows you to choose a branch to pull. These will take you to a page where you can fill in some information about the changes you've made and then submit the request. This takes you to a page that displays the differences so they can be compared. When you are sure you want to add the changes, this page has a "merge pull request" button. You will be asked to confirm that you want to merge the branches, and then you can safely delete the new branch.

**Why are pull requests preferred when working with teams?**

Making a pull request is better, because it alerts others that you have changes you would like to add, which then gives them a chance to look over your code, and make/suggest modifications before officially adding them. It is always a good idea to have a second set of eyes look over your code, but especially so when working in a team, where those second eyes are readily available and where your changes will be affecting other people's code.