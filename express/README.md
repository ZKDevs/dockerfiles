# Node Server README

This is a dockerfile that supports any node server that exposes itself on the port defined by the environment variable `$PORT` (e.g. Express, Koa, Hono, etc)

Usage:
```
docker build -t my-app .
docker run -dp 5000:5000 my-app
```
