# Bluepill plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-bluepill)
[![Build Status](https://travis-ci.org/tbrand/fastlane-plugin-bluepill.svg?branch=master)](https://travis-ci.org/tbrand/fastlane-plugin-bluepill)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-bluepill`, add it to your project by running:

```bash
fastlane add_plugin bluepill
```

## About Bluepill

[Bluepill](https://github.com/linkedin/bluepill) is powered by LinkedIn. By using this plugin, you can run iOS tests in parallel using multiple simulators.

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

Sample code
```ruby
lane :test do
  bluepill(
    app: 'path/to/SomeApp.app',
    scheme: 'path/to/SomeApp.xcscheme',
    output_dir: 'path/to/output_dir',
    device: 'iPhone 6',
    number_of_simulators: 2,
    headless: true
  )
end
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About `fastlane`

`fastlane` is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
