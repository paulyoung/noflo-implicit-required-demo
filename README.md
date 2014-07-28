# NoFlo "implicit required" demo

This project demonstrates how the `required` property of an in port is implicitly set to `true` when it used with WirePattern.

This occurs if `required` is omitted (which should default to `false`), and even when `required` is explicitly specified as `false`.

An alternative would be to still need to explicitly set `required` to `true`, and throw an error when attempting to use a port that has `required` set to `false` with WirePattern.
