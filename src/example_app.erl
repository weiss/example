%% @doc Note the {@type foo()} type!
%% @end

-module(example_app).
-behaviour(application).
-export([start/2, stop/1]).

-type foo() :: any().

start(_StartType, _StartArgs) ->
    dummy = identity(dummy),
    example_sup:start_link().

stop(_State) ->
    ok.

-spec identity(foo()) -> foo().
identity(X) -> X.
