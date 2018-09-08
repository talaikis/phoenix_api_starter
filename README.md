# Phoenix Api Starter

## Run

```bash
mix deps.get
mix phx.gen.context News Link links url:string description:text
mix ecto.setup
iex -S mix phx.server
```

Then you can visit graphiql dashboard:
http://localhost:4000/graphiql

## Benchmark

### Get

(in development, with logs)

```bash
wrk -t12 -c2000 -d60s http://localhost:4000/graphiql?query=%7B%0A%20%20allLinks%20%7B%0A%20%20%20%20id%0A%20%20%20%20url%0A%20%20%20%20description%0A%20%20%7D%0A%7D

  12 threads and 2000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   659.22ms  263.41ms   1.99s    69.30%
    Req/Sec   125.55     78.76   656.00     73.70%
  88182 requests in 1.00m, 60.80MB read
  Socket errors: connect 983, read 0, write 0, timeout 64
Requests/sec:   1465.13
Transfer/sec:      1.01MB
```
