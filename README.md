# Hi, you're not supposed to be here
## click [this link](https://bluesillybeard.github.io) to go where you're supposed to.

If you actually want to contribue to my website for some kind of deranged reason, the sources are in `src`.
build.sh will take the files from `src`, run them through `m4` using `rules.m4`, and put them in docs. The files in docs are what is sent to the browser, so when submitting a pull request don't cancel the changes or delete that directory.

If you don't know what `m4` is, then you should read [this helpful article](https://www.linuxtoday.com/blog/macro-m4-guide/). Any posix shell will have `m4` as a built-in command. If not, then it's not actually a valid posix shell and you should submit an issue to the developers.
