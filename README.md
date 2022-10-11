# URLEncoding.jl

[![](https://img.shields.io/github/v/tag/thechampagne/URLEncoding.jl?label=version)](https://github.com/thechampagne/URLEncoding.jl/releases/latest) [![](https://img.shields.io/github/license/thechampagne/URLEncoding.jl)](https://github.com/thechampagne/URLEncoding.jl/blob/main/LICENSE)

Julia binding for **liburlencoding**.

### API

```jl
function encode(data::String)::String

function encodebinary(data::String)::String

function decode(data::String)::String

function decodebinary(data::String)::String
```

### References
 - [liburlencoding](https://github.com/thechampagne/liburlencoding)

### License

This repo is released under the [MIT](https://github.com/thechampagne/URLEncoding.jl/blob/main/LICENSE).
