defmodule Streams.ErrorView do
  use Streams.Web, :view

  def render("404.html", _assigns) do
    %{error: "Resource not found", code: 404}
  end

  # In case no render clause matches or no
  # template is found, let's render it as 404
  def template_not_found(_template, assigns) do
    render "404.html", assigns
  end

end
