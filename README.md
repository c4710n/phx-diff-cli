# phx-diff-cli

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
$ delta demo-1.6.0-umbrella demo-1.6.2_umbrella
```

## License

MIT
