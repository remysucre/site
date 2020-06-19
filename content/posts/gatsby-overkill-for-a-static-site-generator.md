+++
title = "GatsbyJs: An overkill for a static site generator"
author = ["mrprofessor"]
date = 2020-06-18
tags = ["gatsby", "react", "emacs", "hugo", "orgmode", "rant"]
draft = false
+++

So I have been using Gatsby for almost two years now. I have built a nice looking and fast blog with 15 odd posts. With Gatsby I got PWA is out of the box, the component's are written in react, I can query my post data from graphQL and so many other goodies.


## So why am I moving away you ask? {#so-why-am-i-moving-away-you-ask}

As with my career decisions I have gradually moved from being a Full-stack(UI Primary) engineer to a back-end/platform engineer. While I still retain my love for React, I believe React shouldn't be the norm of web development. The whole ecosystem around React is maddening. It's certainly built for highly interactive web applications, but in my opinion it has no place in a static blog generation.

Also GraphQL is kinda overkill for a blog too.

There are certain pain points that were bugging me for a long time.

1.  It's hard to leverage any library that doesn't have a React component or Gatsby plugin built for it. e.g [Utterances](https://utteranc.es/).
2.  Tagging is not so straight-forward. Hugo and Jekyll has a first-class support for it.
3.  Running an external script always has been tough and need react specific [hacks](https://reactjs.org/docs/dom-elements.html#dangerouslysetinnerhtml).
4.  Lack of dedicated and switchable themes.
5.  The humongous amount of public files.

> Creating a blog shouldn't have to be so complex. A bunch of markdown files and a simple script to convert them into HTML should be enough.

It's definitely not for people who like a comfortable blogging system like [Wordpress](https://wordpress.org/) or [Jeykill](https://jekyllrb.com/), which can be set up in one afternoon. The returns we get for using and understanding such a complex stack is relatively less if you ask me.


## My new workflow {#my-new-workflow}

I have always loved markdown until I discovered [Org-mode](https://orgmode.org/). It simply blew me away. I never thought I could do so much with plain text. And when I learned about [ox-hugo](https://ox-hugo.scripter.co/), the idea of publishing a blog completely from emacs fascinated me.

<div class="post-image">
  <img src="/images/org-hugo-setup.png" />
</div>

`Org-mode` coupled with `ox-hugo` gave me a significant advantage by managing all my pages in a single org-file. With `ox-hugo` I can convert my articles to hugo supported directory structure and the coolest thing is I can still add posts in markdown which can be independent of my master content file.

Given the fact that this is a programming blog, having the ability to [execute source code](https:orgmode.org/worg/org-contrib/babel/) inside the document is really helpful.


## Conclusion {#conclusion}

This post is not about bashing Gatsby or showing it's inferiority. It's an humble explanation of it's pitfalls while creating a basic blog. Gatsby has served me good over the past years. Undoubtedly  it is a great software, just not well suited for my needs at the time.

If you are a front-end developer with the knowledge of React and always willing to dive in and tweak whenever you need a change, then by all means go ahead. But if you don't want to go down that rabbit-hole, just know that there are much easier options available.
