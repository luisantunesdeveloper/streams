defmodule Streams.StreamChannel do
  use Streams.Web, :channel
  #alias Streams.Presence

  def join("stream", payload, socket) do
    {:ok, payload, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (stream:lobby).
  def handle_in("video", %{"body" => body}, socket) do
    broadcast! socket, "video", %{"body" => body}
    {:noreply, socket}
  end

end
