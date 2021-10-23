# find and replace bits

command-line application written in
[apl](https://en.wikipedia.org/wiki/APL_(programming_language)) for finding
locations of a pattern of bits in a file or replacing the instances of the
pattern with a different one.

## usage

these commands work with
[dyalog version 18.0](https://www.dyalog.com/dyalog/dyalog-versions/180.htm)
installed on macos:

* find locations of bits starting with the pattern `01101100`:

```sh
cat src/frb.apl | /Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/dyalog f example/input_text.txt 01101100
```

* find and replace pattern of bits `00101110` with the pattern `00100001`:

```sh
cat src/frb.apl | /Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/dyalog fr example/input_text.txt 00101110 00100001 example/output_text.txt
```
