# **Recipe**

# Gets a "template" for running our code language
FROM rust:latest

# Sets the default directory in the container
WORKDIR /app

# Copies our code to the docker image
# NOTE - this copies the whole project, use .dockerignore to skip parts
COPY . . 

# Builds the project
# NOTE - Not neccessary, but for demo
RUN cargo build

# Sets the enviroment variable "PORT" to 6969
ENV PORT=6969

# Expose the port so our computer can access it
EXPOSE 9000

# App run command
CMD ["cargo", "run"]