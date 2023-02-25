# phx-diff-cli

CLI alternative for [PhoenixDiff](https://www.phoenixdiff.org/).

## Usage

Generate sample apps by using `phx_new`:

```sh
$ ./create-sample-app 1.7.0-rc.3
$ ./create-sample-app 1.7.0
```

Diff generated samples with your preferred diff tool:

```sh
$ diff -r demo-1.7.0-rc.3 demo-1.7.0
```

Or:

```sh
# use light theme
$ delta --light demo-1.7.0-rc.3 demo-1.7.0

# use dark theme
$ delta --dark demo-1.7.0-rc.3 demo-1.7.0
```

## License

MIT
