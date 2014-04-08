# lineman-blog-bootstrap

not really adding much here, just trying to provide the most common starting point for a static blog. 
it just needs a little bootstrap, which isn't much work but who likes repeating stuff?  plus, if
i add this template as a common remote in all my blog repositories, then i can just pull in changes
to all my blogs.  i really think too much.

I was also thinking about using angular - such flash, much state-aware.  
however, i thought about SEO and having to run a PhantomJS process, 
which undermines the staticness of the blog.  there is still a way to do this
without affecting SEO, but it's complicated.  this is a blog, which is where
I should be writing this paragraph now...

### TODO:

Turns out that [lineman](http://linemanjs.com) makes a great blogging engine!

Here's [a screencast](https://www.youtube.com/watch?v=raznFJedCZM) to demo usage for Test Double's blog, [Double Takes](http://blog.testdouble.com).

## Getting Started

Here's how to publish a new blog to the web in minutes:

1. Clone into this repository
2. [Install lineman](https://github.com/linemanjs/lineman#getting-started) if you haven't yet.
3. Run `npm install` to install required project dependencies.
4. Run `lineman run` while you work on writing markdown files under `app/posts`
5. Install [heroku](https://toolbelt.heroku.com) if you haven't, then run `heroku create --buildpack http://github.com/linemanjs/heroku-buildpack-lineman.git`
6. Commit your post and `git push heroku master`, and your blog is hosted on the web with apache2!

## Features

First, consider reading about [grunt-markdown-blog](https://github.com/testdouble/grunt-markdown-blog), our grunt task that's doing almost all the heavy lifting here.

* Just add markdown posts with an ".md" extension to `app/posts` and when you `lineman run` or `lineman build`, they'll be rendered.
* Configure your blog in `config/application.coffee`
* Customize your blog templates in `app/templates`.
* RSS is generated for you at `/index.xml`
* Disqus support is included if you configure it.
* You can, of course, add any Less/CSS or CoffeeScript/JavaScript as you can with any other Lineman application. [See Lineman's documentation](https://github.com/linemanjs/lineman).
* For more info on publishing with heroku, [see details about Heroku & Lineman](https://github.com/linemanjs/lineman#heroku).
* To build static assets to deploy some other way, just run `lineman build` and put the `dist` directory's contents somewhere.

