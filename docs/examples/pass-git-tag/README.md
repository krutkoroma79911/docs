# Git tag -> image tag

Suppose `my-chart` has default `values.yaml`:

```yaml
image:
  repository: registry.gitlab.local/example/app
  tag: v1.0.0
...
```

If we need to create CI/CD pipeline, we need use next script

```shell
helm upgrade --instal my-release my-chart-repo/my-chart-app --set="image.tag=$CI_COMMIT_TAG" -n my-namespace
```

HelmWave allows use declarative way to approach this goal.

**Project Structure**

```
.
├── helmwave.yml
└── values.yml

```

`cat helmwave.yml`

```yaml
{% include "helmwave.yml" %}
```

`cat values.yml`

This values will override default values

```yaml
{% include "values.yml" %}
```

**Run**

```console
helmwave build
helmwave up
```

or `helmwave up --build`
