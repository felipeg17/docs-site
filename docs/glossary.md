# Glossary

The words Pocket Timer uses, in one place.

## Session

A session is a block of focused work. Run `pocket start` to begin one. It lasts 25 minutes by default, and you change that with `session_minutes` (see [session length](configuration.md#session-length)). Pocket Timer rings when it ends. Each session counts toward your daily goal.

## Break

A break is a rest between sessions. Run `pocket break` for a 5-minute break. You set its length with `break_minutes = 5`. Breaks never count toward your daily goal.

## Daily goal

The daily goal is how many sessions make a full day. `daily_goal = 8` sets it, and `pocket today` shows your progress. See [daily goal](configuration.md#daily-goal) for the setting.

## History

Your history is the record of your sessions and breaks. It lives in `~/.pocket/history.jsonl`, one line per session or break. Delete the file to start over. See [where your history is stored](faq.md#where-is-my-history-stored).

Back to [the index](index.md).
