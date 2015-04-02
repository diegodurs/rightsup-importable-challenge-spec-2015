# Right's Up challenge for back-end developper 2015

This challenge tries to implement a subset of our csv importing system (a very simplified version of it).

Your solution must implement Event Sourcing (so PUB/SUB is required) and focus on building micro services. We are only focusing on the command side of the application, so the “trigger” (or first command) should be from the command line (or, even better, from your test).

As an input you get a small standard CSV.

As an output, we would like to get a simple hash (ie: a dictionary) where keys are cells from the header and value are cells from other rows. Assume that the first row of the file is the header.

Lets say we have the following csv (the real file is in `/spec/fixtures/text.csv`):


| 0 | Track Title         | Track Artist |
| - | :-----------------: | :----------: |
| 1 | Space is only noise | Nicolas Jaar |
| 2 | Freak, Go Home      | DARKSIDE     |


The end result, would be two events, where the first event would hold the following data:

```ruby
# wanted result of the row at index 1
{
  ‘Track Title’ => ‘Space is only noise’,
  ‘Track Artist’ => ‘Nicolas Jaar’
}
```

The result of the second event should be trivial.

You’re free to use Ruby or Javascript. You're free to use the tools that you want, but please, choose wisely, and choose simple ones! We beleive you can build this with near zero tools.
If you would like to do it in Ruby, we’ve set up a ultra simple file structure and a vague test. 

You can solve this the simplest way possible, or go further, it really depends on how far you want to go. You're free to use an in memory event store, or use a real store like RabbitMQ.
We only require the given output from the given input and that you use EventSourcing principles. You can test, or not test, it is up to you. But clear instructions on how to setup & execute your app should be given (or if you're really on fire, create a Docker image with the environment allready setup!).

This challenge should be quite simple, focus on doing it well :)

ps: In other to maintain privacy of answers, don't fork this project if you use it. Instead, pull the code locally and create your own repository.
ps2: if someone can fix my markdown table, please create a pull request ;) It works on pure markdown, but not on github markdown!