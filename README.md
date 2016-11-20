* I just noticed  there's multiple committers on this project... I built my app off a openshift compatible rails template and I didn't squash the template creators commits.
   * You can see all of their contributions were from October 2015 and were just building the rails template:
   * [https://github.com/nick-util/coffeeshop_test/graphs/contributors](https://github.com/nick-util/coffeeshop_test/graphs/contributors)
   * [https://github.com/nick-util/coffeeshop_test/commits/master](https://github.com/nick-util/coffeeshop_test/commits/master)
   * My squashed commmit(the work I did): [https://github.com/nick-util/coffeeshop_test/commit/f50234161ee12c960c3cc657f6d83a4a5901e603](https://github.com/nick-util/coffeeshop_test/commit/f50234161ee12c960c3cc657f6d83a4a5901e603)


## CoffeeShop test application

* Several caveats:
  1. I used the built in Rails test framework for speed; would have used Rspec or some TDD testing for real apps

* On the database decisions
  1. There were two ways to do this database schema:
    1. Entity/Attribute/Value pattern
    2. Class/Subclass
  2. I chose the second because for smaller complexity the first becomes an anti-pattern due to overhead

