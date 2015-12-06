**Paste a link to your [USERNAME].github.io repository.**

[Katushe.github.io](https://github.com/Katushe/Katushe.github.io)

**Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.**

Make sure you have set up an account on Github and that you are logged in. On the gray navigation bar across the top of the screen, on the right hand side, there should be three buttons, one of which is a "+" sign. Click on it and then choose "new repository" from the popup. This will take you to the create a repository page. There you can give your new repo a name and description, and choose whether it will be public, i.e. accessible to anyone, or private, i.e. accessible only to you and those you add as collaborators. You can also add a README, which will be a blank file to start with but is generally used as a place to give a description of your work. You can also add a license at this point, which will signify that your code is open source, meaning others can use and change it.Then just hit "create repository" and it will redirect you to the main page for your brand new repository. Now on this page there should be a grey box labeled "HTTPS" followed by the URL for your repository, copy this URL. Now open up your command line (on a Mac, open terminal, on Windows open Powershell.) Now navigate to the folder you would like to put your repository into (in the command line, you go into folders using the command "cd" followed by the path to the folder, for example "cd username/documents/projects"). Once you are in the correct folder, type in "git clone" followed by the repository URL you copied from Github. You might be asked you for your Github username/password. Then you will be done cloning the repository.

**Describe what open source means.**

When software is open source, it means that anyone can look at the source code for that software, thus anyone (at least, anyone with programming knowledge) can see how the program works. They can also then make changes and suggest them to the original owner, or they can use it as a base and put their own spin on it to create something new.

**What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?**

Generally, I like open source because it often means the software is free, which was very helpful for a poor college student :P. But in all seriousness, I like the idea of Open Source because I think making software more collaborative is brilliant. With open source, you can get input from any number of people, or inspire people to take it and go in a completely different direction, so it opens up so many more opportunities and venues for creative solutions than keeping the code private does. Nowadays, so much information is more readily accessible through the internet and I think open source goes along with that, making it easier for anyone to learn something new and contribute to it.

**Assess the importance of using licenses.**

Using licenses is important if you want to retain some control over your work, even if you make it open source. If you just release it into the wild with no license, anyone can try to take credit for it, and then try to turn it around and make a profit off it. An open source license lets you copyright your work while still giving other people permission to play with it, as long as they acknowledge your work.

**What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?**

When I've worked with git/Github before, I did use separate branches while working on my machine, but when adding them to Github I always just pushed them straight to the master branch instead of making pull requests. That tripped me up a bit as I had to remind myself to push them separately each time, since it's so tempting to just skip a step and push to master. Still, I understand that doing it the long way is the better practice, especially once we get to working in teams, so that someone else can look over my work. So, I didn't default to what I am used to; better to get into the habit from the start.

**Did you find any resources on your own that helped you better understand a topic? If so, please list it.**

This isn't so much related to a specific topic, but I started getting frustrated that whenever I did a git push I would be prompted for my username and password (which is quite long). So I used [this method](https://help.github.com/articles/caching-your-github-password-in-git/) to have git store my Github credentials.