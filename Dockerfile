FROM elixir:1.13.0-slim AS builder

ENV MIX_ENV prod

WORKDIR /src

COPY lib lib
COPY mix.* ./

RUN mix local.hex --force && \
  mix local.rebar --force && \
  mix deps.get --only-prod && \
  mix deps.compile
RUN mix release

FROM elixir:1.13.0-slim

WORKDIR /app

COPY --from=builder /src/_build/prod/rel/macetada_plug .

CMD ["./bin/macetada_plug", "start"]
