%%%-------------------------------------------------------------------
%%% @author erly
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. Sep 2017 下午4:10
%%%-------------------------------------------------------------------
-module({{name}}_control).
-author("erly").
-include_lib("erly_control/include/erly_commands.hrl").

%% API
-export([
	init/0
]).

%% Commands
-export([
	example/0
]).

%% ========================================================================================
%%                                      外部 API
%% ========================================================================================

init() ->
	Commands =
		[
			#erly_commands{
				name = example, %% 命令
				namespace = {{name}}, %% 命名游戏空间 gm_游戏ID
				desc = "example", long_desc = "!exmaple",
				module = ?MODULE, %% 回调模块
				function = example, %% 回调方法
				args = [], %% 入参类型
				result = ok
			}

		],
	erly_commands:register(Commands).



example() ->
	io:format("this command example", []),
	%% TODO do something
	ok.

%% ========================================================================================
%%                                      内部 API
%% ========================================================================================
