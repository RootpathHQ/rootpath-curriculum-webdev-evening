# Session: Introduction

This session will introduce you to your instructor and the course outline, get you set up with the right tools and cover some basics.

> **Instructor Notes**: Have Zoom.us set up beforehand. You'll need to start the call on zoom, and then move to Screenhero for some of the configuration work.

## Pre Work

See [Course Prework](https://github.com/RootpathHQ/rootpath-curriculum-webdev-evening/tree/master/0-prework).

## Lesson Outline

1. Pre-work confirmation
2. Structure of Lessons
2. Course Outline
3. The Right Mindset
4. How to Take Notes
4. Tool Setup
5. External Resources

***

## Lesson & Course Structure

Each session will take approximately 1 hour. You should expect to spend **about half an hour** preparing for the session beforehand, and **between one and six hours** doing the post-session exercises and reading.

There are 42 sessions in total, so the whole course will take about 21 weeks (or 5 months), assuming 2 sessions per week. That said, this session is felxible, and depending how well you're getting on, we may be able to cover a number of sessions over a weekend.

Although there's osme felxibility, ideally we'll stick to a fixed cadance - every Monday and Thursday, for example.

#### Session Structure

Each session will follow this sructure:

* Pre-work (reading, setup, downloading starter code, videos)
* 5 mins - Recap of last lesson and work done in between
* 45 mins - Teaching
* 10 mins - Q&A/Recap/Explain Exercises)
* Exercises

#### Course Outline

##### Intro to Web Technology
1. Intro Session - tool setup/pairing
2. The Command Line
3. Git and GitHub
4. The SDLC and Software Testing
5. Intro to Web Technology - Basics
6. Intro to Web Technology - HTTP & REST

###### Intro to Web Design
1. HTML, Semantics and Accessibility
2. HTML Forms
3. Intro to CSS
4. CSS Colours and Dimensions, Typography
5. CSS - Display and Positioning
6. CSS Layout

###### Advanced Web Design

1. More Git and GitHub
2. RWD
3. FlexBox

###### Introduction to Ruby
1. The Basics incl Condudtionals
2. Arrays and Iterators
3. Hashes and symbols
4. Methods
5. TDD
6. OOP - Encapsulation
7. OOP - Recap and Polymorphism
8. OOP - Inheritance
9. Bundler and External Data
10. Sinatra
11. Regular Expressions & Something Else
12. Project Review

###### Agile
1. Agile Overview
2. User Stories and Acceptance Criteria
3. Scrum
4. Kanban

###### DevOps
1. Continuous Delivery
2. Software Craftsmanship/DevOps

###### JavaScript
1. Intro and Functions
2. The Basics
3. Loops, Scope and Closure
4. The DOM and DOM Events
5. Objects
6. Ajax & REST


## The Right Mindset & Note-Taking

Key points to dicuss:

* Curiosity
* Independance
* Responsibility

Top Tips:

* Have a todo list, and every time I ask you to do something, add to the list.
* Read **EVERYTHING** you can.
* Review your notes on a cadance:
   * Right after a lesson (tidy them up at this point)
   * The next day
   * Right before the next session
* Schedule time blocks in your calendar for working on exercises and projects.

[This big list](https://github.com/sdmg15/Best-websites-a-programmer-should-visit) is a great resource for people learning to code, and there are some other resources at the end of this lesson. Remember, it's **totally cool** to google for stuff. We all do it every day.

## Tools

We need to get set up with the tools we're going to use on the course. You should have got set up with some of them before this session already, but we'll talk through some of them and how to use them. We also have some more technical setup to run through.

### Zoom

Zoom is the tool we're going to use for videoconferencing. Explain:

* The general layout
* Screen sharing, both ways

### Slack

Slack is the primary tool for async communication. We'll use it **loads**, both during sessions and outside of sessions.

Why Slack?

* Instant Collaboration - WhatsApp for Business* It's more fun than emails 😋* It keeps everyone in the loop* It helps remote workers feel part of the team* It's integrated with everything

On desktop, demonstrate:

* Channels and DMs.
* Mentions.
* Threaded conversations.
* Uploading Files and Images
* Slash commands.
* Reactions.
* Settings.
* Adding a custom sidebar theme.
* Pasting tweets, articles and videos.
* Message syntax (code, bold etc)
* Adding code Blocks.
* Adding Posts.
* The mobile app, desktop app and web app.

On mibile (mirrored over Zoom), demonstrate:

* Basic functionality
* Threaded messages
* Reactions
* Sharing an article to Slack

### Medium

Medium is a great place to read and write.

Why read on medium?

* It's how you learn new stuff* It'll help you connect ideas together* You can save articles for reference* You can respond and recommend other's articles

Why write on Medium?

* It helps order you ideas and thoughts* Your written English will improve* You'll get better and technical/business writing* You'll have new ideas* It builds your personal brand* You're more likely to get hiredBut I'm not very good at writing 😞!!

Explain: It doesn't matter. You will get better the more you read and write. I don't expect to publish anyone's first article to to the Sparta Global Channels, but if you write a couple of articles a week (or maybe just one) over the duration of the course, you will probably have some published by the end. MAKE THE EFFORT.**Demo**: Demonstrate how medium works, including:- Titles and basic formatting.- Lists and Links- Adding Images (and all settings)- Where to find nice images (Unsplash)- Embedding videos, tweets, instagrams and other medium articles.
### Pocket

Demonstrate the pocket Chrome app and web app.

Demonstrate using the medium and Pocket apps, mirrored over Zoom.

### GitHub

Explain how github works in general, and talk trhough the main features, URL structures etc.

### ScreenHero

We'll use screenhero to pair program on some tasks.

> **Instructor Note**: Switch to Screenhero at this point, sharing the instructor machine.

Practice opening a Screenhero session and controling each other's laptops.

### Homebrew & The Command Line Tools

> **Instructor Note**: Switch to sharing the student mac at this point. Pair on configuring and setting up the Dev Environment.
 
First, we'll run through the commands in [laptop.sh](laptop.sh). This will configure most of what we need. Next, we need enable some settings in Terminal.app.

1. Open the preferences of Terminal.app.
2. Click the cog and choose **Import**.
3. Choose the SpartaPro theme, which should be at `~/SpartaPro.terminal`.
4. Click the **Default** button to set it as your default.
5. Change the font to `Inconsolata 16pt`.
6. Restart terminal.

### Atom

We already installed atom using Homebrew Cask. We need to configure some packages that make atom nicer to use. We could do this in the UI, or we could do it via `apm`, Atoms command line utility.

```shell
apm install atom-beautify atom-ctags busy-signal dannysmith-atom-theme-syntax floobits highlight-selected line-ending-converter minimap seti-icons
```

Next, we need to open Atom's preferences and set the theme and Syntax theme, as well as any other setting we need. Once atom is cnfigured, run over:

* The plugins stuff.
* Where to find keyboard shortcuts.
* How to change the language of a file.

### FloodBits

1. Sign up online.
2. Install the Atom plugin.
3. Install `flootty`.
4. Set up your profile online.
5. Add your `~/.floorc.json`.

Create a workspace and test it out - initially from a browser, then from within atom and the terminal.


## Summary



***

## External Resources

* [Stack Overflow](http://stackoverflow.com)
* [Exercism](http://exercism.io)
* [CodeWars](https://www.codewars.com)
* [Code Katas](http://codekata.com/)
* [Codecademy](https://codecademy.com)
* [Code School](https://codeschool.com)

## Exercises

* Make sure your avatars/bios are the same on Medium, Twitter, Rootpath Slack, Github etc. Explain that you're learning to code in tour bio, and pick a decent picture.
* Follow some good people on Twitter and medium.
* Sign up for a StackOverflow account.
* Set up a LinkedIn profile.
* Work out how you're going to make, keep and review your notes.
* Set up a Todo list of some sort. Wunderlist is a good choice, but use any method you want.
* Run over what we've done today, if there's something you don't understand, dig into it.
* Play with all the tools we've looked at until you know how they work.

## Further Reading

* [Unconventional Method for Learning a New Programming Language](https://hackernoon.com/unconventional-way-of-learning-a-new-programming-language-e4d1f600342c)
