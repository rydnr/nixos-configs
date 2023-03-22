{
  inputs.myNixosFlake.url = "path:/etc/nixos/flakes/this-system";
  outputs = inputs: inputs.myNixosFlake.outputs;
}
