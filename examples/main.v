// Example application that uses all of the available API options.
module main

import spinner
import time

fn main() {
	mut s := spinner.Spinner.new(9)
	s.set_hide_cursor(true)
	s.start()
	time.sleep(4 * time.second) // simulate some work
	s.reverse()
	time.sleep(4 * time.second) // simulate some work
	s.set_char_set(3)
	s.restart()
	s.stop()

	println('we stopped the spinner!')
}
