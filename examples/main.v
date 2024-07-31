// Example application that uses all of the available API options.
module main

import spinner

fn main() {
	mut s := spinner.Spinner.new(35)
	s.set_hide_cursor(true)
	s.start()
	time.sleep(10 * time.second) // simulate some work
	s.stop()

	println('we stopped the spinner!')
}
