# github-url

![tests](https://github.com/adriaanmolendijk/github-remote-url/actions/workflows/main.yml/badge.svg)

## What is click?
According to https://click.palletsprojects.com/en/8.0.x/ we have 
> Click is a Python package for creating beautiful command line interfaces in a composable way with as little code as necessary. It’s the “Command Line Interface Creation Kit”. It’s highly configurable but comes with sensible defaults out of the box.

## About this repository
A Python client tool used to generate remote GitHub URLs from the project repository.
- This project uses the Python click package.

### Setup 
```bash
make setup-venv
```

### Test
```bash
make test
```

### Example usage
Get GitHub URL to repository root.
```bash
github
```

Get GitHub URL to branches of the repository.
```bash
github b
```

Get GitHub URL to pull requests of the repository.
```bash
github pr
```
