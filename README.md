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

## Performance notes

### For each repo (in series) fetching every PR (in series), best of 5
```
time ./gh-cli > /dev/null

real	0m20.672s
user	0m0.884s
sys	0m0.216s
```

### For each repo (in parallel) fetching every PR (in series), best of 5
```
time ./gh-cli > /dev/null

real	0m14.777s
user	0m0.844s
sys	0m0.219s
```
