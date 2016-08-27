# Unicode Proposal to Encode Subscripts/Superscripts for Mathematical Programming

This is a draft proposal to encode additional subscript and
superscript characters in future versions of Unicode, motivated mainly
by computer programming for technical applications.

Many programming languages (C#, Go, Java, Julia, Python, Rust, Swift, etc.) now
allow identifiers to use a wide array of Unicode characters, which enables
programs in mathematical fields to use notations that closely hew
to the original mathematical notations.  e.g. one can now have variable names
like `x̂` or `αₓ`.   Unfortunately, this opportunity is hampered by
a lack of subscript and superscript characters in Unicode 9.  (Most
famously, there are superscript characters for every lowercase Latin
letter *except q*.)

We believe that, given the recent explosion of Unicode support in
programming languages (and editors), the time is ripe to propose
better support for mathematical subscripts/superscripts in Unicode.

## Two alternative proposals

* The simplest possibility, similar to the existing superscripts and
subscripts in Unicode, is to propose additional characters of the
same sort: certainly every Latin and Greek upper and lowercase letter,
and probably a few additional mathematical symbols such as ‖, ⟂, *, †
that are commonly used in superscripts and/or subscripts.

* A more general possibility would be to propose two new [combining characters](https://en.wikipedia.org/wiki/Combining_character), *mathematical subscript* and *mathematical superscript*, that indicate that the previous glyph (a character + combining characters) should be rendered in sub/superscript form.

Input from experts in fonts and text rendering software would be
especially helpful in evaluating the feasibility of the latter
approach.

## How you can help

First, we welcome comments on this proposal (in the form of issues or
pull requests): corrections, references to notable
sources/applications, and technical comments.

Second, we suspect that it will be easier to get the Unicode
Consortium to take us seriously if prominent authors, organizations,
free/open-source projects, and companies can sign on to this proposal
(as co-authors or endorsers).

Third, it will greatly strengthen the proposal if we can commit to
providing draft fonts or (for new combining characters) the necessary
improvements to text-rendering software, so experts in those areas are
welcome.
