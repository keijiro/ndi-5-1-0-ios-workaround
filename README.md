# ndi-5-1-0-ios-workaround

Workaround for NDI SDK for iOS (v5.1.0) linker error

## What happened

NDI SDK for iOS (v5.1.0) causes a missing symbol error when linking.

The missing symbol is `Processing::NDI::Plugins::Lib::memory::xml::validate_xml`.

## Workaround

I implemented an empty function as `Processing::NDI::Plugins::Lib::memory::xml::validate_xml`.

## Risk

Quite risky! You shouldn't use it. (I'll use it, though.)

It will cause a multiple symbol error when it gets fixed on the SDK side.
