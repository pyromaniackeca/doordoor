-ifndef(_doordoor_types_included).
-define(_doordoor_types_included, yeah).

-define(DOORDOOR_USERSTATE_ACTIVE, 0).
-define(DOORDOOR_USERSTATE_INACTIVE, 1).
-define(DOORDOOR_USERSTATE_BANNED, 2).

%% struct 'User'

-record('User', {'id' :: integer(),
                 'username' :: string() | binary(),
                 'state' = 0 :: integer()}).
-type 'User'() :: #'User'{}.

-endif.
