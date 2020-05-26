
FROM frolvlad/alpine-glibc:alpine-3.11_glibc-2.31

ENV DENO_VERSION=1.0.2

LABEL version="1.0.0" description="Deno Docker Image" maintainer="Reysmer Valle <reysmerwvr@gmail.com>"

RUN apk add --virtual .download --no-cache curl=7.67.0-r0 \
    && curl -fsSL https://github.com/denoland/deno/releases/download/v${DENO_VERSION}/deno-x86_64-unknown-linux-gnu.zip \
        --output deno.zip \
    && unzip deno.zip \
    && rm deno.zip \
    && chmod 777 deno \
    && mv deno /bin/deno \
    && apk del .download

RUN addgroup -S deno \
    && adduser -S deno -G deno \
    && mkdir /deno-dir/ \
    && chown deno:deno /deno-dir/

ENV DENO_DIR /deno-dir/

ENTRYPOINT ["deno"]
CMD ["run", "https://deno.land/std/examples/welcome.ts"]