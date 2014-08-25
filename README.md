Erlang Problems
===============

This project is a simple Erlang exercise with a couple of modules waiting to be filled in with code. There are
two, high-level tests showing some expected output for each module. You should probably write some more tests along
the way to completing the exercises. There are also shell scripts included to quickly run the tests and to clean
the project after testing. The only requirement is an Erlang installation.

JSON Rendering
--------------

One module wants you to implement rendering of an Erlang term into JSON. The general rules are that an Erlang atom 
or binary string should become a JSON string, an integer should become a JSON number, and a list of terms should
become a JSON array. Because Erlang has no concept mirroring a JSON object (until maps were added, but we'll
assume those don't exist yet), we'll say that a single-element tuple containing a proplist represents a JSON object
(i.e. `{[{field, value}, ...]}`. Beware Erlang's "a string is a list".

Weather Forecasts
-----------------

One module mimics retrieving data from an external weather API. To avoid non-portability, the weather
data has been hardcoded into a separate module instead of using an HTTP client and a real API. The fake data module
has a sleep built in to simulate the delay in talking to an API. The problem expressed by the test is to retrieve
forecast data for several locations at the same time without incurring an excessive wait.
