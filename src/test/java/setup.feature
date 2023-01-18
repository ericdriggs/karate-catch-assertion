@ignore
Feature: common setup

  Scenario: common setup

    * def AssertionError = Java.type('java.lang.AssertionError')

    * def throwError =
    """
    function(message) {
      karate.log(message);
      throw new AssertionError(message);
    }
    """