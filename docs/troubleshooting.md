# Troubleshooting

## How do I check that Pocket Timer is installed?

Run `pocket --version`. If it prints a version, Pocket Timer is installed.

## How do I clear my history and start over?

Your history is in `~/.pocket/history.jsonl`. Delete that file:

`rm ~/.pocket/history.jsonl`

## My session is shorter or longer than I want

Set `session_minutes = 25` in `~/.pocket.toml`. Values from 5 to 120 are accepted. See [session length](configuration.md#session-length).

## I don't want a sound when a session ends

Set `sound = "none"` in `~/.pocket.toml`. See [sounds](configuration.md#sounds).

Back to [the index](index.md).
