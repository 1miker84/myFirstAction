workflow "New Workflow" {
  on = "push"
  resolves = [ "First Action", "Second Action"]
}

action "First Action" {
  - name: The Docker CLI
    uses: actions-hub/docker@v1.0.0
    args: run hello-world
  }

action "Second Action" {
  needs = "First Action"
  - name: The Docker CLI
    uses: actions-hub/docker@v1.0.0
    args: run hello-world
  }

