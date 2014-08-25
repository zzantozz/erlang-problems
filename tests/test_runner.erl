-module(test_runner).
-export([start/0]).

modules() -> [json].

start() ->
  eunit:test(modules(), [verbose]),
  init:stop().