# phx-diff-cli

The CLI alternative for [PhoenixDiff](https://www.phoenixdiff.org/).

## Usage

Create sample apps by using `phx_new`:

```console
$ ./create-sample-app 1.7.10
$ ./create-sample-app 1.7.11
```

Diff generated samples with your preferred diff tool:

```console
$ diff -r demo-1.7.10 demo-1.7.11
```

Or:

```console
# use light theme
$ delta --light demo-1.7.10 demo-1.7.11

# use dark theme
$ delta --dark demo-1.7.10 demo-1.7.11
```

## License

MIT
