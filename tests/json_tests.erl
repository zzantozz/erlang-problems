-module(json_tests).
-compile([export_all]).
-include_lib("eunit/include/eunit.hrl").

render_test() ->
  {ok, Data} = file:read_file("tests/bob.json"),
  Expected = binary_to_list(Data),
  Rendered = json:render({[
    {name, <<"Bob">>},
    {age, 192},
    {phone_numbers, [<<"123-456-7890">>, <<"890-567-1234">>]},
    {children, [
      {[{name, <<"Fred">>},
        {age, 12}]},
      {[{name, <<"Jane">>},
        {age, 8},
        {hobbies, [<<"Reading">>, <<"Swimming">>, <<"Skating">>]}]}]}]}),
  io:format("~nExpected: ~p", [Expected]),
  io:format("~nRendered: ~p", [Rendered]),
  ?assertEqual(Expected, Rendered).
