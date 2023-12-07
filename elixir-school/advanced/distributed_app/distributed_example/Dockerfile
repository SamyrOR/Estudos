FROM elixir:1.15.7

ARG NAME
ENV NAME={NAME}

COPY . .
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix do deps.get, deps.compile

RUN chmod +x entrypoint.sh
CMD ["./entrypoint.sh"]
