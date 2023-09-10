%%%-------------------------------------------------------------------
%% @doc etcd_provider public API
%% @end
%%%-------------------------------------------------------------------

-module(phoscon_provider_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    phoscon_provider_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
