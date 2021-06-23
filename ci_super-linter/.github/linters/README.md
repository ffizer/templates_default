# Linters

To configure linters (to override default config from [super-linter/TEMPLATES at master · github/super-linter](https://github.com/github/super-linter/tree/master/TEMPLATES)), place configuration under `.github/linters` or customize path into `.github/workflows/linter.yaml` (for details see [Using your own rules files](https://github.com/github/super-linter#using-your-own-rules-files)).

## Local

To lint locally see [super-linter/run-linter-locally.md at master · github/super-linter](https://github.com/github/super-linter/blob/master/docs/run-linter-locally.md)

```sh
docker run -e RUN_LOCAL=true -v $PWD:/tmp/lint github/super-linter
```

Tips: create a shell alias for the command above.
