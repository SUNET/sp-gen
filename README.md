# sp-gen

Generate metadata for a SWAMID SP.

## Requirements

- openssl
- envsubst (GNU gettext)

On macOS, `brew install gettext` is sufficient.

## Usage

1. `./install`
2. `sp-gen --template`
3. Edit `input.sh` and supply definitions for all the listed variables.
4. `sp-gen`

You should now have three new files:

- `sp-cert.pem`
- `sp-key.pem`
- `metadata.xml`

Key generation can be skipped by adding an existing `sp-cert.pem` to this directory.
