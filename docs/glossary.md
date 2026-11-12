# Glossary

The four terms you meet most often in Pocket Timer.

## Session

A countdown you start with `pocket start`. Its length comes from `session_minutes = 25` (5 to 120); see [session length](configuration.md#session-length). Every session counts toward your daily goal.

## Break

A rest you start with `pocket break`. It lasts 5 minutes by default; change it with `break_minutes = 5`, as the [FAQ](faq.md#can-i-change-the-length-of-a-break) explains. Breaks never count toward your daily goal.

## Daily goal

The number of sessions that make a full day, set with `daily_goal = 8`. Run `pocket today` to see your progress. See [daily goal](configuration.md#daily-goal).

## History

The record of your sessions and breaks, kept in `~/.pocket/history.jsonl`, one line each. Delete the file to start over. See [where your history is stored](faq.md#where-is-my-history-stored).

Back to [the index](index.md).
