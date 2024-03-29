resque_lifting_weights
====================
A gem that combines all the goodness resque has to offer including:

  * [resque](https://github.com/defunkt/resque)
  * [resque_mailer](https://github.com/zapnap/resque_mailer)
  * [resque-scheduler](https://github.com/bvandenbos/resque-scheduler)
  * [resque-retry](https://github.com/lantins/resque-retry)
  * [resque-cleaner](https://github.com/ono/resque-cleaner)
  * [resque-delay-with-mongoid](https://github.com/kdmny/resque-delay-with-mongoid)


Installation Gemspec
------------
	gem 'resque_lifting_weights'
	

Sample Use
------------------
All the stuff you're used to with Resque like:

* Visit /resque to view queues
* Create jobs that implement the perform method
* Call .delay to process jobs in the background
* Include include Resque::Mailer in mailers (or use BlackHoleMailer's AsyncMailer class)
* Schedule jobs to be run later using enqueue_in and enqueue_at

Submitting an Issue
-------------------
We use the [GitHub issue tracker](http://github.com/kdmny/resque_lifting_weights/issues) to track bugs and
features. Before submitting a bug report or feature request, check to make sure it hasn't already
been submitted. You can indicate support for an existing issuse by voting it up. When submitting a
bug report, please include a [Gist](http://gist.github.com/) that includes a stack trace and any
details that may be necessary to reproduce the bug, including your gem version, Ruby version, and
operating system. Ideally, a bug report should include a pull request with failing specs.


Submitting a Pull Request
-------------------------
1. Fork the project.
2. Create a topic branch.
3. Implement your feature or bug fix.
4. Add documentation for your feature or bug fix.
5. Run <tt>rake doc:yard</tt>. If your changes are not 100% documented, go back to step 4.
6. Add specs for your feature or bug fix.
7. Run <tt>rake spec</tt>. If your changes are not 100% covered, go back to step 6.
8. Commit and push your changes.
9. Submit a pull request. Please do not include changes to the gemspec, version, or history file. (If you want to create your own version for some reason, please do so in a separate commit.)


Copyright
---------
Copyright (c) 2013 K$.
See [LICENSE](https://github.com/kdmny/resque_lifting_weights/blob/master/LICENSE.md) for details.
