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

Our proposal is to add [combining characters](https://en.wikipedia.org/wiki/Combining_character), *mathematical subscript* and *mathematical superscript*, that indicate that the previous glyph (a character + combining characters) should be rendered in sub/superscript form.   Fonts can then implement these characters as "ligatures" for selected characters, so that e.g. an "A" followed by "mathematical subscript" would render as a subscript "A".

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
