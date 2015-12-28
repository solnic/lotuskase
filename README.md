# lotuskase

This is a simple PoC that shows how [dry-component](https://github.com/dryrb/dry-component)
can be used to build a web stack using [lotus](https://github.com/lotus) components.

By no means it is a project that tries to compete with [the lotus stack](https://github.com/lotus/lotus).
The purpose of the project is to present how dry-component API can be used to organize
3rd party code and how simple it is to put together a custom stack using reusable
components.

## Why?

To make sure `dry-component` can be used with different setups, not just [rodakase](https://github.com/solnic/rodakase)
from which it was extracted from.

## What is it doing?

This is a lotus setup which uses dry-component container to configure and boot
lotus routes, controllers and views.

Code organization is minimalistic:

- `core/blog/application` defines a simple rack-compatible app which delegates to its
  lotus routes
- `core/blog/container` configures the container for the blog application
- `core/blog/view` uses dry-component boot API to configure and load lotus view
- `core/blog/controller` uses dry-component boot API to configure and load lotus controller
- `core/boot` loads the container and application
- `web/routes` defines routes for the blog application

The rest levarages lotus conventions for controllers and views, so no special setup
is needed and things Just Work™.

With dry-component each piece can be loaded separately and the container is the
starting point which configures load path and additional settings like the env.
This means you can, for example, open console and boot the view component:

```
irb(main):001:0> require './core/blog/container'
=> true
irb(main):002:0> Blog::Container.boot!(:view)
=> Blog::Container
irb(main):003:0> Views::Home::Hello.render(format: :html)
=> "<h1>Hello World</h1>"
```

This functionality is being used by the test setup, where spec_helper.rb only
requires the container and configures rspec. Then a separate `app_helper.rb`
is used which loads `core/boot` where we load entire app that is needed for request
specs.
