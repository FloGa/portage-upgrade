# Changes in 0.5.0

-   Use arrays instead of strings

-   Only be verbose if connected to a terminal

-   Add update script with btrfs features

    By using a dedicated subvolume, the deletion afterwards can be done
    asynchronously, speeding up the emerge process a tiny bit.

-   Add emerge-bin analogons to upgrade-bin

# Changes in 0.4.0

-   Quote arguments

    Quoting arguments is important in case the arguments contain quoted
    items with spaces.

-   Add wrapper script to upgrade with binary packages

    An upgrade with binaries only has special needs. There can be a whole
    lot of packages, wanting to be merged at the same time. Per se, that is
    not that bad, since the only thing to be done is to extract the package
    and move it over to the live system. What *can* be a problem though, is
    the fact, that they all want to *install* at the same time, thus
    blocking the process and keep the filesystem extremely busy.

    To avoid those blockings without cutting the ability to extract multiple
    packages in parallel, this wrapper script lifts the limitations of
    parallel jobs and load average, since extracting doesn't do much harm to
    the CPU. At the same time, the wrapper adds "ebuild-locks" to and
    removes "parallel-install" from FEATURES. This causes the install phases
    to run sequentially instead of parallelly.

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
