defmodule RedditServiceTest do
  use ExUnit.Case
  doctest RedditService

  test "greets the world" do
    assert RedditService.hello() == :world
  end
end
