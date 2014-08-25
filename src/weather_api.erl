-module(weather_api).
-export([get_weather/1]).

get_weather(City) ->
  % Simulated delay in calling an external API.
  timer:sleep(500),
  proplists:get_value(City, weathers()).

weathers() -> [
  {"Chicago",     {weather, {current,  84, "Clear"}, {forecast,  72, "Windy"}}},
  {"Sydney",      {weather, {current,  68, "Rainy"}, {forecast,  53, "Clear"}}},
  {"London",      {weather, {current,  85, "Hot"},   {forecast,  66, "Rainy"}}},
  {"San Antonio", {weather, {current, 102, "Hot"},   {forecast, 105, "Hot"}}},
  {"Antarctica",  {weather, {current, -85, "Cold"},  {forecast, -73, "Cold"}}}].
