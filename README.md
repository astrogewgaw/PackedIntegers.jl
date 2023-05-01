<div align="center" style="font-family:JetBrainsMono Nerd Font">
<h1><code>PackedIntegers</code></h1>
<h4><i>(Un)pack 1/2/4-bit integers from 8-bit integer data.</i></h4>
<br/>

<div align="justify">

In radio astronomy, 1/2/4-bit data is commonplace, and still in use at many telescopes around the world. In such cases, 8, 4, or 2 integers are packed into a single 8-bit integer. In order to read data like this back in for further analysis, one needs to unpack it. One will therefore read in the data as 8-bit integers, and then apply a sequence of bit operations for unpacking. This package exports two functions: `unpack` and `pack`, for unpacking, or repacking, 1/2/4-bit data, respectively.

### Installation

Installing the package is as easy as:

```julia
] add PackedIntegers
```

### Usage

Using the package should be as easy as:

```julia
using PackedIntegers
```

</div>
</div>
