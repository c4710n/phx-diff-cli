# phx-diff-cli

CLI alternative for [PhoenixDiff](https://www.phoenixdiff.org/).

## Usage

Generate sample apps by using `phx_new`:

```sh
$ ./create-sample-app 1.6.0
$ ./create-sample-app 1.6.2
```

Diff generated samples with your preferred diff tool:

```sh
$ diff -r demo-1.6.0-umbrella demo-1.6.2_umbrella
```

Or:

```sh
# use light theme
$ delta --light demo-1.6.0-umbrella demo-1.6.2_umbrella

# use dark theme
$ delta --dark demo-1.6.0-umbrella demo-1.6.2_umbrella
```

## License

MIT
