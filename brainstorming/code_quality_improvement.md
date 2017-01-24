Reasons problems are introduced:

* Hotfixes and warmfixes
  * They have a higher probability of regression errors
* Large PRs
  * Reviewers are less likely to catch problems
* Tests are suboptimal
  * Too slow
  * Insufficient coverage
  * Not built before bug fixes
* Common problems not identified
  * Developer training/resources?
  * Start with Ivy's "breaking changes" slides
* Issues with external gems/libraries
* Ignoring Honeybadger


Metrics:

* Number of hotfixes/warmfixes
* Time spent on hotfixes/warmfixes
* Number of bugs reported

When reviewing PRs, look for:

* Size of PR
* Style guide adherence
* Query efficiency
* Scaling concerns
* Security vulnerabilities
* Honeybadger use
* Paper Trail use
