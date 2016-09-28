defmodule Streams.FeedView do
  use Streams.Web, :view

  def render("index.json", %{feeds: feeds}) do
    %{data: render_many(feeds, Streams.FeedView, "feed.json")}
  end

  def render("show.json", %{feed: feed}) do
    %{data: render_one(feed, Streams.FeedView, "feed.json")}
  end

  def render("feed.json", %{feed: feed}) do
    %{id: feed.id,
      count: feed.count}
  end
end
