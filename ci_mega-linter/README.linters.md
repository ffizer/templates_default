# Linters

To configure linters used by [Mega-Linter](https://nvuillam.github.io/mega-linter/) add the configuration file of the linter into your project

- the location of configuartion file used by mega-linter is printed in the output of Mega-Linters run (the default location, also used by editor/IDE is often the root of the project)
- the location of configuration file can be explicitly set in the config of `.mega-linter.yml`, see its [Schema Docs](https://nvuillam.github.io/mega-linter/json-schemas/configuration.html) to have the keys (and the default value).

## Local

To lint locally see [super-linter/run-linter-locally.md at master · github/super-linter](https://github.com/github/super-linter/blob/master/docs/run-linter-locally.md)

```sh
docker run -v /var/run/docker.sock:/var/run/docker.sock:rw -v $PWD:/tmp/lint:rw nvuillam/mega-linter:v4

# OR if you have npx

npx mega-linter-runner
```

Tips: create a shell alias for the docker command above.
