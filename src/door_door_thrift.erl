%%
%% Autogenerated by Thrift Compiler (0.9.3)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(door_door_thrift).
-behaviour(thrift_service).


-include("door_door_thrift.hrl").

-export([struct_info/1, function_info/2]).

struct_info(_) -> erlang:error(function_clause).
%%% interface
% registerUser(This, Username)
function_info('registerUser', params_type) ->
  {struct, [{1, string}]}
;
function_info('registerUser', reply_type) ->
  i64;
function_info('registerUser', exceptions) ->
  {struct, []}
;
% getUser(This, UserId)
function_info('getUser', params_type) ->
  {struct, [{1, i64}]}
;
function_info('getUser', reply_type) ->
  {struct, {'doordoor_types', 'User'}};
function_info('getUser', exceptions) ->
  {struct, []}
;
% getState(This, UserId)
function_info('getState', params_type) ->
  {struct, [{1, i64}]}
;
function_info('getState', reply_type) ->
  i32;
function_info('getState', exceptions) ->
  {struct, []}
;
% setState(This, UserId, State)
function_info('setState', params_type) ->
  {struct, [{1, i64},
          {2, i32}]}
;
function_info('setState', reply_type) ->
  {struct, []};
function_info('setState', exceptions) ->
  {struct, []}
;
function_info(_Func, _Info) -> erlang:error(function_clause).

