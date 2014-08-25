-module(test_runner).
-export([start/0]).

modules() -> [].

start() ->
  eunit:test(modules(), [verbose]),
  init:stop().