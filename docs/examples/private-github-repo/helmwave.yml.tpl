version: 0.24.0

repositories:
  - name: your-private-git-repo-hosted-charts
    url: https://{{ requiredEnv "GITHUB_TOKEN"}}@raw.githubusercontent.com/foo/bar/master/


.options: &options
  namespace: {{ requiredEnv "NS" }}
  create_namespace: true


releases:
  - name: hello
    chart:
      name: foo/bar
    <<: *options