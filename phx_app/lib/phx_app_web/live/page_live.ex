defmodule PhxAppWeb.PageLive do
  use PhxAppWeb, :live_view

  def render(assigns) do 
    ~H"""
      <vstack>
        <%= for a <- [1,2,3] do %>
          <text id={"a_#{a}"}>a: <%= a %></text>
          <%= for b <- [1,2,3] do %>
            <text id={"b_#{b}"}>b: <%= b %></text>
            <%= for c <- [1,2,3] do %>
              <text id={"c_#{c}"}>c: <%= b %></text>
            <% end %>
          <% end %>
        <% end %>
      </vstack>
    """
  end
end
