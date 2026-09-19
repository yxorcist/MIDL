# MIDL

One boring workflow for the whole year.

```bash
midl al td      # open/create today's Algebra TD note in nvim
midl fvr cm     # open/create today's Functions CM session
midl pn tp      # open/create today's Numerical Programming TP note
midl            # choose interactively
```

End of session:

```bash
make            # compile every publishable Typst entrypoint
midl status     # show NEW / MODIFIED / STAGED artifacts
midl push       # send NEW/MODIFIED PDFs to Drive/MIDL/00_INBOX
```

`GitHub = source.`  `Drive = readable library.`  `00_INBOX = staging.`

Nothing is automatically deleted from Drive.
