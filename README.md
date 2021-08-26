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