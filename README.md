heroku-choose-app-like-a-human
==============================

## Installation

    $ heroku plugins:install https://github.com/tkopczuk/heroku-choose-app-like-a-human.git

## What will I gain?
Ever wanted to run a few commands on one Heroku app, in sequence?

This got in your way, didn't it:

    $ heroku <...> --app <app name>
 
 Now you can do this, like a human being:
   
    $ heroku app <app name> <...>

## So I can do what?
So you can run serial commands in sequence:

    $ heroku app myapp addons:add pgbackups

    Press ↑, a few ↤↤↤↤↤

    $ heroku app myapp addons:add _
    
    Feels good, doesn't it…
    
    $ heroku app myapp addons:add memcachier:dev

	One more?

    $ heroku app myapp _
    
    $ heroku app myapp pgbackups:capture

Lose these small frustrations, so you can have more time to build great things.