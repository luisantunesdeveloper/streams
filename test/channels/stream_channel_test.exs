defmodule Streams.StreamChannelTest do
  use Streams.ChannelCase

  alias Streams.StreamChannel

  setup do
    {:ok, _, socket} =
      socket("user_id", %{some: :assign})
      |> subscribe_and_join(StreamChannel, "stream")

    {:ok, socket: socket}
  end

  test "broadcasts on video", %{socket: socket} do
    push socket, "video", %{"body" => "cenas"}
    assert_broadcast "video", %{"body" => "cenas"}
  end

  test "broadcasts are pushed to the client", %{socket: socket} do
    broadcast_from! socket, "broadcast", %{"some" => "data"}
    assert_push "broadcast", %{"some" => "data"}
  end
end
