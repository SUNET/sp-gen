# sp-gen

Generate metadata for a SWAMID SP.

## Requirements

- Docker
- envsubst (GNU gettext)

## Usage

1. Edit `input.sh` and supply definitions for all the listed variables.
2. `./sp-gen.sh > metadata.xml`

You should now have three new files:

- `sp-cert.pem`
- `sp-key.pem`
- `metadata.xml`

Key generation can be skipped by adding an existing `sp-cert.pem` to this directory.
