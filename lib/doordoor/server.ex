defmodule DoorDoor.Server do
  use Riffed.Server,
  service: :door_door_thrift,
  structs: DoorDoor.Models,
  functions: [registerUser: &DoorDoor.Handler.register_user/1,
              getUser: &DoorDoor.Handler.get_user/1,
              getState: &DoorDoor.Handler.get_state/1,
              setState: &DoorDoor.Handler.set_state/2
  ],
  server: {:thrift_socket_server,
           port: 2112,
           framed: true,
           max: 10_000,
           socket_opts: [
             recv_timeout: 3000,
             keepalive: true]
          }

  defenum UserState do
    :active -> 0
    :inactive -> 1
    :banned -> 2
  end

  enumerize_struct User, state: UserState
  enumerize_function setUserState(_, UserState)
  enumerize_function getState(_), returns: UserState
end
