defmodule DoorDoor.Client do
  use Riffed.Client,
  auto_import_structs: false,
  structs: DoorDoor.Models,
  client_opts: [
    host: "localhost",
    port: 2112,
    retries: 3,
    framed: true
  ],
  service: :door_door_thrift,
  import: [:registerUser,
           :getUser,
           :getState,
           :setState]

  enumerize_function setState(_, UserState)
  enumerize_function getState(_), returns: UserState
end
