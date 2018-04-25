defmodule RedditService.GraphqlQueries do

  @moduledoc """
  Used to query graphQLHub and pull back basic data for Subreddit passed in

  # Functions
  * get_data/1 - Passes back title, url, score, and number of comments for subreddit passed
  """

  def get_data(subreddit) do
    query_string(subreddit)
    |> Neuron.query
  end

  defp query_string(subreddit) do
    set_config()
    """
    {
      reddit {
        subreddit(name: "#{subreddit}") {
          hotListings(limit: 20) {
            title
            url
            score
            numComments
          }
        }
      }
    }    
    """
  end

  defp set_config() do
    Neuron.Config.set(url: "https://www.graphqlhub.com/graphql?query=")
  end
end