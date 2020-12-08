# example-elixir

Example Elixir with, Phoenix Framework, Ecto ORM, PostgreSQL, GraphQL, Resful, Auth SSO with JWT and much more.

# The Example Elixir

## Get Started

```bash
MIX_ENV=dev mix phx.server
```

> On your bashrc or .zshrc put this: export MIX_ENV=dev

## Endpoints

| Endpoint   | Method | Action  |
| ---------- | ------ | ------- |
| /graphql   | POST   |         |
| /graphiql  | GET    |         |
| /users     | GET    | Index   |
| /users     | POST   | Store   |
| /users     | PATCH  | Update  |
| /users/:id | DELETE | Destroy |
| /users/:id | GET    | Show    |

## Insomnia

If you use Insomnia, just import a [insomnia-v4.yaml](insomnia-v4.yaml)

## Structure

```
├── _build
├── assets
├── config
├── deps
├── lib
│   └── exampleElixir
│   └── exampleElixir.ex
│   └── exampleElixir_web
│   └── exampleElixir_web.ex
├── priv
└── test

lib/exampleElixir_web
├── channels
│   └── user_socket.ex
├── controllers
│   └── page_controller.ex
├── templates
│   ├── layout
│   │   └── app.html.eex
│   └── page
│       └── index.html.eex
├── views
│   ├── error_helpers.ex
│   ├── error_view.ex
│   ├── layout_view.ex
│   └── page_view.ex
├── endpoint.ex
├── gettext.ex
├── router.ex
└── telemetry.ex

```

# Step By Step

```bash
mix phx.gen.schema User users name:string email:string \
bio:string number_of_pets:integer
```

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Install Node.js dependencies with `npm install` inside the `assets` directory
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

We are almost there! The following steps are missing:

    $ cd exampleElixir

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
