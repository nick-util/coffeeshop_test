## CoffeeShop test application

* Several caveats:
  1. I used the built in Rails test framework for speed; would have used Rspec or some TDD testing for real apps

* On the database decisions
  1. There were two ways to do this database schema:
    1. Entity/Attribute/Value pattern
    2. Class/Subclass
  2. I chose the second because for smaller complexity the first becomes an anti-pattern due to overhead

* Note: I just noticed  there's multiple commiters on this project that is due to the base rails openshift template I used for hosting.
   * You can see all of their contributions were from October 2015:
   * [https://github.com/nick-util/coffeeshop_test/graphs/contributors](https://github.com/nick-util/coffeeshop_test/graphs/contributors)
