# fix-s22pdf

s22pdf is/was a popular PDF generator in China. Unfortunately it lies about
Chinese font encodings so the generated PDFs are broken for most PDF viewers
(see [the original issue report](https://bugs.ghostscript.com/show_bug.cgi?id=691457)
and a [follow-up discussion in IRC](https://ghostscript.com/mupdfirclogs/2018/09/05.html)).

The official `mupdf` authors have provided [a script](https://github.com/ArtifexSoftware/mupdf/blob/master/docs/examples/fix-s22pdf.js) to fix this.
Here is just a doc on how to use it:

```
mutool run fix-s22pdf.js <input_to_pdf>
```

The fixed PDF, `out.pdf`, will be stored in current working directory.
