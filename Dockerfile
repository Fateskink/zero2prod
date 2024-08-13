FROM rust:1.79.0

WORKDIR /src

# RUN apt update && install lld clang -y

COPY . .
ENV SQLX_OFFLINE true
RUN cargo build --release

ENTRYPOINT [ "./target/release/zero2prod" ]
