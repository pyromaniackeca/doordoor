defmodule DoordoorTest do
  use ExUnit.Case
  doctest Doordoor

  test "User registration" do
    assert DoorDoor.Client.registerUser("Uros Jagodic") == 0
  end

  test "temp" do
    user = DoorDoor.Client.getUser(0)

    assert user.id == 0
    assert user.username == "Uros Jagodic"
    assert user.state.ordinal == :active
  end
end
