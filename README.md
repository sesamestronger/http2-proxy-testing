# http2-proxy-testing

A test of a transparent proxy for HTTP2 requests from node.

## Running

```sh
docker-compose up
```

Navigate to `localhost:8081` in a web browser to inspect web traffic.

The app is running on `localhost:3000`. Navigate to `http://localhost:3000/` in a web browser to trigger an HTTP1 and HTTP2 request from within the app.
