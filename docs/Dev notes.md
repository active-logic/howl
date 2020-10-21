# Fix nitpicking

In `Howl`, nitpicking is via x % map where map is a `Map` and x is a string.
In `Map`, the module operator invokes `Rev(x, y.nits)`; I parameterise this to ignore conflicts or not.
Likewise `RevChunk(...)`
In `RevChunk`, the div operator is used to reverse a chunk. I will do this a different way since we need parameterization

Fixing this does not *seem* difficult, however it causes an error in `Modifiers`, where a template which specifies type modifier ordering is initialized via `string[] / Map` (to get the Howl version of the template)

What this looks like, to me, is the default while testing is conflicts were being ignored, and I accidentally changed this default.
