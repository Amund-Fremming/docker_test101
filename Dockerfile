# Use official Rust image with Rust toolchain pre-installed
FROM rust:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project into the container
# NOTE: Use .dockerignore to exclude files/folders you don't want to copy
COPY . .

# Build the project (debug build).
# Optional because `cargo run` will build automatically if needed.
RUN cargo build

# Set environment variable for the app port
ENV PORT=6969

# Expose the port our app listens on (should match PORT environment variable)
EXPOSE 6969

# Run the app
CMD ["cargo", "run"]