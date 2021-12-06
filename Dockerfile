FROM elixir:1.13.0-alpine

ENV MIX_ENV prod

WORKDIR /app

COPY mix.exs .

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get --only-prod && \
    mix deps.compile

COPY . .

RUN mix release

CMD ["_build/prod/rel/macetada_plug/bin/macetada_plug", "start"]
