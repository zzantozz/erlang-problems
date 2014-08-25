-module(test_runner).
-export([start/0]).

modules() -> [json, weather].

start() ->
  eunit:test(modules(), [verbose]),
  init:stop().