🌊 Helmwave is **[helm3](https://github.com/helm/helm/)-native** tool for deploy your Helm Charts via **GitOps**.
HelmWave is like docker-compose for helm.

## 🚀 Features

> We focus on speed execution, tiny size, pretty debugging.

With 🌊 helmwave you will become a superhero:

- Deploy multiple environments by one step
- Separate values for environments
- Common values for apps
- Keep a directory of chart value files
- Maintain changes in version control
- Template values
- Manage deploy behavior (`pending_release_strategy`, `depends_on`, `allow_failure`)
- Live tracking kubernetes resources with [kubedog](https://github.com/werf/kubedog)
- Fetch data from external datasource like vault, aws ssm
- ... and much more!

## Comparison to alternatives

|                                        |                                        🌊 HelmWave                                         |                                       Helmfile                                        |                           Helmsman                            |
| :------------------------------------: | :---------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------: | :-----------------------------------------------------------: |
|               **Syntax**               | YAML + [sprig](http://masterminds.github.io/sprig/)/[gomplate](https://docs.gomplate.ca/) |                  YAML + [sprig](http://masterminds.github.io/sprig/)                  |                           TOML/YAML                           |
|               Code style               |                                        snake_case                                         |                                       camelCase                                       |                           camelCase                           |
|              Requirements              |                                            No                                             | `kubectl`, `helm`<br> *`helm-diff` (optional: `helm-secrets`, `helm-s3`, `helm-git`*) |              `kubectl`, `helm`<br> *`helm-diff`*              |
|           **Helm execution**           |                               function call of bundled helm                               |                                       `os.Exec`                                       |                           `os.Exec`                           |
|               Helm diff                |                            function call of bundled helm-diff                             |                                       `os.Exec`                                       |                           `os.Exec`                           |
| **Live-tracking kubernetes resources** |                        [Kubedog](https://github.com/werf/kubedog)                         |                                          No                                           |                              No                               |
|          Get application logs          |                        [Kubedog](https://github.com/werf/kubedog)                         |                                          No                                           |                              No                               |
|             Get k8s events             |               [Kubedog](https://github.com/werf/kubedog) and helm progress                |                                          No                                           |                              No                               |
|                 Labels                 |                                          `tags`                                           |                                       `labels`                                        |                               ?                               |
|      Manage kube-context via iac       |                                            Yes                                            |                                          Yes                                          |                              Yes                              |
|           Parallel releases            |                                            Yes                                            |                                          Yes                                          | Releases with the same priority can be executed in parallel.  |
|          Parallel limitations          |                   Smart DAG goroutine count with concurrency limitation                   |                               concurrent helm processes                               |         max number of concurrent helm releases to run         |
|         Releases dependencies          |                                       `depends_on`                                        |                                        `needs`                                        |                     Kind of (`priority`)                      |
|     Dependencies cross namespaces      |                                          via `@`                                          |                                        via `/`                                        |                              No                               |
|        Manage pending strategy         |                                            Yes                                            |                                          No                                           |                              No                               |
|       Explain graph dependencies       |                                            Yes                                            |                                          No                                           |                              No                               |
|        Latest docker image size        |               ![](https://img.shields.io/docker/image-size/diamon/helmwave)               |            ![](https://img.shields.io/docker/image-size/chatwork/helmfile)            | ![](https://img.shields.io/docker/image-size/praqma/helmsman) |
|        Compatible with helm v2         |                                            No                                             |                                          Yes                                          |                              Yes                              |
|                  OCI                   |                                       `registries`                                        |                               option in `repositories`                                |                   only `pull`, not `login`                    |
|            Sub-main config             |                                            No                                             |                                          Yes                                          |                               ?                               |
|          manage render values          |                    `render` option and options for setting delimiters                     |                                   by file extension                                   |                               ?                               |
|             Remote values              |                                      HTTP/HTTPS only                                      |                                      `go-getter`                                      |                               ?                               |
|              **Planfile**              |                                            Yes                                            |                                          No                                           |                              No                               |
|            Vault / AWS SSM             |                                via `gomplate` datasources                                 |                                   custom functions                                    |                               ?                               |

🌊 Helmwave was inspired by docker-compose, terraform and helmfile.

---

Here I would like to express our gratitude to all contributors for their commits, authors of third-party dependencies and all open source community ❤️

<a data-theme="dark" data-layers="1,2,3,4" data-stack-embed="true" href="https://embed.stackshare.io/stacks/embed/c53d33cff1a65c5a640b1f64c4e49c"></a><script async src="https://cdn1.stackshare.io/javascripts/client-code.js" charset="utf-8"></script>
