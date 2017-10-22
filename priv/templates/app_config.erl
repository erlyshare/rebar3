%%%-------------------------------------------------------------------
%%% @author erly
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Jul 2017 下午3:41
%%%-------------------------------------------------------------------
%% @hidden
-module({{name}}_config).
-author("erly").


-define(APP_NAME, {{name}}).
%% API


-export([
	init/0,
	get_config/1,
	get_config/2,
	list/0
]).

%% ========================================================================================
%%                                      外部 API
%% ========================================================================================
init() ->
	app_config:init(?APP_NAME).

get_config(Key) ->
	app_config:get(?APP_NAME, Key).

get_config(Key, Default) ->
	app_config:get(?APP_NAME, Key, Default).

list() ->
	app_config:list(?APP_NAME).

%% ========================================================================================
%%                                      内部 API
%% ========================================================================================