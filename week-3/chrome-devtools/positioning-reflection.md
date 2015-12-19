![exercise 1](/week-3/chrome-devtools/imgs/exercise_1.png)
![exercise 2](/week-3/chrome-devtools/imgs/exercise_2.png)
![exercise 3](/week-3/chrome-devtools/imgs/exercise_3.png)
![exercise 4](/week-3/chrome-devtools/imgs/exercise_4.png)
![exercise 5](/week-3/chrome-devtools/imgs/exercise_5.png)
![exercise 6](/week-3/chrome-devtools/imgs/exercise_6.png)
![exercise 7](/week-3/chrome-devtools/imgs/exercise_7.png)
![exercise 8](/week-3/chrome-devtools/imgs/exercise_8.png)
![exercise 9](/week-3/chrome-devtools/imgs/exercise_9.png)

**How can you use Chrome's DevTools inspector to help you format or position elements?**

Chrome's DevTools allow you to edit your HTML/CSS in-browser without affecting your actual files. So you can try out different formatting/positions and then only edit your actualy files when you find something that works for you. It also shows you what attributes an element has that have been inherited from a parent/have been set by the browser, which can cut down on unnecessary repeats.

**How can you resize elements on the DOM using CSS?**

You can resize elements with CSS using the width and height properties. You can assign a size using many different units including: *pixels*, which are absolute and will not change size based on the width of the broser, *ems*, which are relative and change size based on the current font size, and *percentages*-which are relative and will change size based on the size of the element's parent/the width of the browser.

**What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?**

+ Static is the default positioning used by the browser if you don't specify one of the others; it is just based off the HTML element order.

+ Relative positioning moves an element from that default static position based on the amounts you assign to its top, bottom, right, and/or left properties.

+ Fixed positioning is based on the browser window-it will basically lock the element in place and it will stay in the same spot within the window even when you scroll down the page and other elements disappear from view.

+ Absolute positioning also moves an element based on assigned values of top, bottom, right, left. However, its "original" position isn't based on the static positioning but on its parent element. It will move relative to the top left corner of its parent, and if its parent element is just <html> then it will move relative to the top left corner of the page. A caveat is that the parent element must have relative or absolute positioning for it to work.

I found static and fixed to be the most straightforward. I found relative and absolute to be the most difficult, mostly because it took me a while to understand the difference between the two.

**What are the differences between margin, border, and padding?**

Padding referes to the space around the content of an element, the border is the edge that goes around the padding and content, and the margin is the space around the border. Padding and border are considered to be part of the element, while margin is outside the actual element and creates space between elements.

**What was your impression of this challenge overall? (love, hate, and why?)**

I liked it for the most part, because it introduced me to using the development tools. I can see it being very useful in the future to experiment with HTML/CSS in real time while working on a website. I like to work by trial and error, so this makes it easier to try things out without having to constantly reedit my files.