# `arg_match()` has informative error messages

    Code
      (expect_error(arg_match0("continuuos", c("discrete", "continuous"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "discrete" or "continuous", not "continuuos".
      i Did you mean "continuous"?
    Code
      (expect_error(arg_match0("fou", c("bar", "foo"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "bar" or "foo", not "fou".
      i Did you mean "foo"?
    Code
      (expect_error(arg_match0("fu", c("ba", "fo"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "ba" or "fo", not "fu".
      i Did you mean "fo"?
    Code
      (expect_error(arg_match0("baq", c("foo", "baz", "bas"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "foo", "baz", or "bas", not "baq".
      i Did you mean "baz"?
    Code
      (expect_error(arg_match0("", character(), "my_arg")))
    Output
      <error/rlang_error>
      `values` must have at least one element.
    Code
      (expect_error(arg_match0("fo", "foo", quote(f()))))
    Output
      <error/rlang_error>
      `arg_nm` must be a string or symbol.

# `arg_match()` provides no suggestion when the edit distance is too large

    Code
      (expect_error(arg_match0("foobaz", c("fooquxs", "discrete"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "fooquxs" or "discrete", not "foobaz".
    Code
      (expect_error(arg_match0("a", c("b", "c"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "b" or "c", not "a".

# `arg_match()` makes case-insensitive match

    Code
      (expect_error(arg_match0("a", c("A", "B"), "my_arg"), "Did you mean \"A\"?"))
    Output
      <error/rlang_error>
      `my_arg` must be one of "A" or "B", not "a".
      i Did you mean "A"?
    Code
      (expect_error(arg_match0("aa", c("AA", "aA"), "my_arg"), "Did you mean \"aA\"?")
      )
    Output
      <error/rlang_error>
      `my_arg` must be one of "AA" or "aA", not "aa".
      i Did you mean "aA"?

# arg_require() checks argument is supplied (#1118)

    Code
      (expect_error(f()))
    Output
      <error/rlang_error>
      `f()` requires the argument `x` to be supplied.
    Code
      (expect_error(g()))
    Output
      <error/rlang_error>
      `f()` requires the argument `x` to be supplied.

# arg_match() supports symbols and scalar strings

    Code
      (expect_error(arg_match0(chr_get("fo", 0L), c("bar", "foo"), "my_arg")))
    Output
      <error/rlang_error>
      `my_arg` must be one of "bar" or "foo", not "fo".
      i Did you mean "foo"?

