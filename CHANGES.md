# Changes since latest release

# Changes in 0.3.0

-   Add changed-deps option

    There was a discussion on the mailing list recently. Obviously one
    should use this option from time to time to not diverge too much from
    the tree.

-   Improve readability of code

    To be precise:

    -   Use long options instead of short cuts;
    -   move options into dedicated variable to not clutter the
        for-loop-oneliner;
    -   sort options alphabetically.

# Changes in 0.2.0

-   Change interpreter to bash

    This change leaves possibilites of more fancy stuff in the future.

-   Update path to real file instead of symlink

    Somewhere in the past, the gentoo functions were outsourced to a
    dedicated file and shipped with its own package. The original path is
    mere a symlink to that new file and its usage is discouraged.

-   Surround arguments with quotes

    As usual there are errors due to wrong quoting of arguments if just
    evaluating the command as-is. By surrounding each argument with a single
    quote, the command will be evaluated correctly.

# Changes in 0.1.0

Initial release with pre-existing files
