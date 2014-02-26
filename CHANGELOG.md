# v0.6.0

- Relax pg version dependency. Works with `~> 0.12`

# v0.5.1

- Relax Rails version dependency. Works with `4.0`.

# v0.5.0

- Removed attr_accessors from Storey::Duplicator (they were never meant to be part of the public API anyway)
- Validate the schema name when creating schemas
- Clean source and target files after duplicating [#18](https://github.com/ramontayag/storey/issues/18)

# v0.4.2

- `rake storey:migrate VERSION=xxxx` now works and uses the `VERSION` environment variable
- `reset_column_information` of all models to avoid strange PostgreSQL errors (see https://github.com/ramontayag/storey/issues/11)
- Add this CHANGELOG :)
