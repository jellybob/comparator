# Comparator

This project mostly exists as a toy project to gain experience in using Elixir + Phoenix, plus various webby things I
don't get a chance to use in my day job.

## Running Locally

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Deployment

This application is running on [Fly.io](https://fly.io) in production, the fly.toml that exists is for my production
config (but contains no sensitive information).

* *Deploying:* `fly deploy`
* *Opening a remote shell:* `fly ssh issue --agent && fly ssh console` then in the console `app/bin/comparator remote`

Clustering is not yet configured, mostly because I don't want to pay money for multiple instances.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
