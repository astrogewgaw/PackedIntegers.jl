<div align="center">
<h1><code>PackedIntegers</code></h1>
<h4><i>(Un)pack 1/2/4-bit integers from 8-bit integer data.</i></h4>
<br/>

![License][license]
![GitHub Stars][stars]
[![Gitmoji Badge][gitmoji_badge]][gitmoji]

</div>

<div align="justify">

In radio astronomy, 1/2/4-bit data is commonplace, and still in use at many telescopes around the world. In such cases, 8, 4, or 2 integers are packed into a single 8-bit integer. In order to read data like this back in for further analysis, one needs to unpack it. One will therefore read in the data as 8-bit integers, and then apply a sequence of bit operations for unpacking. This package exports two functions: `unpack` and `pack`, for unpacking, or repacking, 1/2/4-bit data, respectively.

Install it by typing and running:
```bash
] add PackedIntegers
```

in the Julia REPL.

</div>

[gitmoji]: https://gitmoji.dev
[gitmoji_badge]: https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=for-the-badge
[stars]: https://img.shields.io/github/stars/astrogewgaw/PackedIntegers.jl?style=for-the-badge
[license]: https://img.shields.io/github/license/astrogewgaw/PackedIntegers.jl?style=for-the-badge
