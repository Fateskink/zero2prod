> Install necessary crate with cargo

### watch to check and run app
##### install watch
```
cargo install cargo-watch
```
##### run app with cargo-watch
```
cargo watch -x check -x run
```

or run with tracing log
```
 RUST_LOG=trace cargo watch -x check -x run
```

### in case of the app contain testing
```
cargo test
```

##### install cargo-tarpaulin to test with the code coverate
```
cargo install cargo-tarpaulin
```

```
cargo tarpaulin
```

### Linting
##### for the fiest time, install clippy
```
rustup component add clippy
```

##### then run
```
cargo clippy
```

### format code
##### install rustfmt
```
rustup component add rustfmt
```

```
cargo fmt
```

### Check Security Vulnerabilities
##### install cargo-audit
```
cargo install cargo-audit
```

```
cargo audit
```

# Expand code without params to see work flow
```
cargo install cargo-expand
```

```
cargo expand
```

> Database
First of all create `.env` file
##### Install sqlz-cli
```
cargo install --version="~0.6" sqlx-cli --no-default-features --features rustls,postgres
```

##### Create database
```
sqlx database create
```

##### Make migration
```
sqlx migrate add create_subscriptions_table
```

##### Run migration
```
sqlx migrate run
```
