# find and replace bits

command-line application for finding the locations of a pattern of bits in a
file or replacing the instances of the pattern with a different one.

## usage

  ```sh
  ./frb.apl [option] [args]
  ```

### options

  - find the locations of the pattern of bits:

    ```sh
    f [input_file] [pattern_of_bits_to_find]
    ```

  - replace the pattern of bits:

    ```sh
    fr [input_file] [pattern_of_bits_to_find] [pattern_of_bits_to_replace_with] [output_file]
    ```

## examples

  - find locations of the pattern of bits `01101100`:

    ```sh
    ./frb.apl f example/input_text.txt 01101100
    ```

  - find and replace the pattern of bits `00101110` with the pattern `00100001`:

    ```sh
    ./frb.apl fr example/input_text.txt 00101110 00100001 example/output_text.txt
    ```
