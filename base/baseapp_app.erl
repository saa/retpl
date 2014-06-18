-module({{name}}_app).

-behaviour(application).

-export([start/0]).
-export([start/2]).
-export([stop/1]).


start() ->
    application:ensure_all_started({{name}}).


start(_StartType, _StartArgs) ->
    {{name}}_sup:start_link().


stop(_State) ->
    ok.
