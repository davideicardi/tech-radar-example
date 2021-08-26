# Tech Radar Example

Tech Radar website using [Jekyll](https://jekyllrb.com/) and [blips-chart](https://github.com/davideicardi/blips-chart).

See [demo here](https://davideicardi.github.io/tech-radar-example/).

A Tech Radar is a list of technologies, complemented by an assessment result, called ring assignment.
The Tech Radar is a tool to inspire and support developers to pick the best technologies; it provides a platform to share knowledge and experience in technologies, to reflect on technology decisions and continuously evolve our technology landscape.

This projects is based on the pioneering work of [ThoughtWorks](https://www.thoughtworks.com/radar) and
the open source project of [Zalando](https://opensource.zalando.com/tech-radar/).

All data are handled using [Jekyll collections](https://jekyllrb.com/docs/collections/).
There are 3 collections:

- `quadrants`: list of quadrants inside the radar (must be 4), see `_quadrants`
- `rings`: list of rings inside the radar (must be 4), see `_rings`
- `blips`: list of technologies, see `_blips`

All data are stored as html or markdown files, no database.

## Adding and updating content

To add or update the list of technologies inside the radar just change the 
files inside the `_blips` directory.
Each blip is composed by a markdown file with the following structure:
```
---
title: MongoDb                      # Name of the technology
quadrant: DATA                      # DATA, PLATFORMS, PATTERNS or LANGUAGES
ring: ADOPT                         # HOLD, ASSESS, TRIAL or ADOPT
website: https://www.mongodb.com/   # official website
moved: 0                            # 0=not moved, 1=moved up, -1=moved down
---

some description
```

## Requirements

- Ruby version 2.5.0

## Build

```
bundle exec jekyll build
```

## Development

```
bundle exec jekyll serve --livereload
```

Open `http://127.0.0.1:4000`.