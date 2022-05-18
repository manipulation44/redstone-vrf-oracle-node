FROM rust:1.52
# FROM debian:stable-slim

# TODO: improve this Dockerfile later
# We can only build once and run web server in slim environment
# Example here: https://github.com/pepoviola/tide-basic-crud/blob/main/Dockerfile

COPY . .

RUN cargo build

# Configure env variables
ENV PRIVATE_KEY=

# Running the app
CMD cargo start