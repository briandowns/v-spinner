# Spinner

spinner is a simple package to add a spinner / progress indicator to any terminal application. Examples can be found below as well as full examples in the examples directory.

For more detail about the library and its features, reference your local godoc once installed.

Contributions welcome!

## Installation

```sh
v install --git https://github.com/briandowns/v-spinner
```

## Available Character Sets

[Here](https://github.com/briandowns/spinner/blob/master/README.md#available-character-sets)

## Features

* Start
* Stop
* Restart
* Reverse direction
* Update the spinner character set
* Update the spinner speed
* Prefix or append text
* Get spinner status
* Output final string on spinner/indicator completion

## Examples

```go
import spinner
import time

fn main() {
	mut s := spinner.Spinner.new(9)   // Build our new spinner
    s.set_delay(400*time.millisecond) // Set the spinner delay
	s.start()                         // Start the spinner
	time.sleep(4 * time.Second)       // Run for some time to simulate work
	s.stop()
}
```

## Update the character set and restart the spinner

```go
s.set_char_set(4)  // Update spinner to use a different character set
s.restart()                           // Restart the spinner
time.sleep(4 * time.Second)
s.stop()
```

## Update spin speed and restart the spinner

```Go
s.set_delay(200 * time.Millisecond) // Update the speed the spinner spins at
s.restart()
time.sleep(4 * time.Second)
s.stop()
```

## Reverse the direction of the spinner

```Go
s.reverse() // Reverse the direction the spinner is spinning
s.restart()
time.sleep(4 * time.Second)
s.stop()
```

## Prefix or append text to the spinner

```Go
s.set_prefix("prefixed text: ")  // Prefix text before the spinner
s.set_suffix("  :appended text") // Append text after the spinner
```

## Get spinner status

```Go
println(s.active())
```

## Final String Output

Add additional output when the spinner/indicator has completed. The "final" output string can be multi-lined..

```Go
mut s := Spinner.new(9)
s.set_final_message("Complete!\nNew line!\nAnother one!\n")
s.start()                 
time.sleep(4 * time.Second)
s.stop()                   
```

Output
```sh
Complete!
New line!
Another one!
```
