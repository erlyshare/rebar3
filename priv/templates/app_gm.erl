%%%-------------------------------------------------------------------
%%% @author erly
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Sep 2017 下午1:47
%%%-------------------------------------------------------------------
-module({{name}}_gm).
-author("erly").
-include_lib("erly_control/include/erly_commands.hrl").
-include_lib("erly_player/include/erly_player_behaviour.hrl").
%% API
-export([
    init/0
]).

%% Commands
-export([
    example/3
]).
%% ========================================================================================
%%                                      外部 API
%% ========================================================================================

init() ->
    Commands =
        [
            #erly_commands{
                name = example, %% 命令
                namespace = gm_0, %% 命名游戏空间 gm_游戏ID
                desc = "example", long_desc = "!exmaple 123",
                module = ?MODULE, %% 回调模块
                function = example, %% 回调方法
                args = [{user_info, any}, {hander_state, any}, {index, number}], %% 入参类型
                result = ok
            }

        ],
    erly_commands:register(Commands).



example(_UserInfo, _HandlerState, Number) ->
    io:format("this command = ~p", [Number]),
    %% TODO do something
    ?HANDLE_CONTINUE.



%% ========================================================================================
%%                                      内部 API
%% ========================================================================================