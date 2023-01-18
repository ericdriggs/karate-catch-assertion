Feature: catch assertion failure

  #Fails if uses externally defined function to throw AND inspect caught error
  Scenario: throw assertion and catch it

    * def throwErrorCatchLocal =
    """
    function(message) {
      try {
        throwError(message)
      }
      catch(err) {
        if (err.message == message) {
          karate.log("### Expected message found. Success!")
        }
      }
    }
    """

    * throwErrorCatchLocal("foo")