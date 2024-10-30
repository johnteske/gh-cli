# gh-cli
A command-line tool for analyzing Rambda pull requests

Retrieves every pull request from the Ramda GitHub organization for analysis.

## Usage

### Requirements
- make
- docker
- a `.env` file with the contents: `GH_PAT=<replace with a GitHub personal access token>`

### Development environment
For ease of development, consistency, and eventual deployment, the app is built and run inside a container.

`make build`: build the container
`make run`: run an interactive shell in the container

### Running the tool inside the container
`npm install`: install dependencies
`./gh-cli`: run the tool
