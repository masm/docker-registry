# docker-registry

> A Docker registry image built from `registry:2.0`

## Usage

This image is a customization of `registry:2.0`. It replaces the default `config.yml` from
that image by one that:

- uses S3 for storage
- uses in memory cache for layer metadata
- uses New Relic for reporting
- uses Logstash output format for log data
- assumes the use of a reverse proxy (for TLS, authentication, etc.)

If you want this exact same configuration, you can use this image by overriding some
environment variable (you have to specify values for all of them):

```
docker run --rm \
       --env REGISTRY_HTTP_SECRET=<random-value>            \
       --env REGISTRY_REPORTING_NEWRELIC_LICENSEKEY=<value> \
       --env REGISTRY_STORAGE_S3_ACCESSKEY=<value>          \
       --env REGISTRY_STORAGE_S3_BUCKET=<value>             \
       --env REGISTRY_STORAGE_S3_REGION=<value>             \
       --env REGISTRY_STORAGE_S3_SECRETKEY=<value>          \
       --publish 5000 \
       masm/registry:latest
```

If you want a different configuration, please use `registry:2.0` image as a base instead.

## License

Copyright (c) 2015 Marco Monteiro. Released under the MIT license. See `LICENSE` file for details.
