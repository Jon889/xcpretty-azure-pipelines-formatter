# XCPretty Azure Pipelines Formatter

Custom formatter for [xcpretty](https://github.com/supermarin/xcpretty) with some syntactic sugar for presentation on Azure Pipelines. 

## Usage

Specify `xcpretty-azure-pipelines-formatter` as a custom formatter to `xcpretty`:

```bash
#!/bin/bash

xcodebuild | xcpretty -f `xcpretty-azure-pipelines-formatter`
```

## How it works

The `--formatter` option takes a file path as an argument, which is returned by the `xcpretty-azure-pipelines-formatter` binary. It must be evaluated before the xcpretty arguments are evaluated, hence the backtick wrapping. The specified file must return a Ruby subclass of `XCPretty::Formatter`, which will then receive `formatter_*` method invocations as the build output is parsed.
