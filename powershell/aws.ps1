function aws-launch {
  param (
    [string]
    $name,
    $role
  )

  # profile can be
  # dev, test, staging, prod, legacy
  $profile = "dev"

  if ($role) {
    $profile = $role
  }
  write-output "launching $($name) under $($profile)"
  aws-vault exec $profile --no-session --assume-role-ttl=12h -- $name
}

function aws-ps {
  param (
    $role
  )

  aws-launch -name pwsh -role $role
}