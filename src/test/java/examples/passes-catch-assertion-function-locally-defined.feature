Feature: catch assertion failure

  Scenario: throw assertion and catch it

    * def throwErrorLocal =
    """
    function(message) {
      karate.log(message);
      throw new AssertionError(message);
    }
    """

    * def throwErrorCatchLocal =
    """
    function(message) {
      try {
        throwErrorLocal(message)
      }
      catch(err) {
        if (err.message == message) {
          karate.log("### Expected message found. Success!")
        }
      }
    }
    """

    * throwErrorCatchLocal("foo")