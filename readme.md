# find and replace bits

command-line application written in
[apl](https://en.wikipedia.org/wiki/APL_(programming_language)) for finding
locations of a pattern of bits in a file or replacing the instances of the
pattern with a different one.

## usage

these commands work with
[dyalog version 18.0](https://www.dyalog.com/dyalog/dyalog-versions/180.htm)
installed on macos:

* find locations of bits starting with the pattern `00001111`:

```sh
cat frb.apl | /Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/dyalog f input_file.bin 00001111
```

* find and replace pattern of bits `000000000000000011111111` with the pattern
  `111111110000000000000000`:

```sh
cat frb.apl | /Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/dyalog fr input_image.bmp 000000000000000011111111 111111110000000000000000 output_image.bmp
```
