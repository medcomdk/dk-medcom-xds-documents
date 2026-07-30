A trial use version of this IG.
Updated the slicing on `ContainedDocumentReference` to instead of $this.resolve() which leads to multiple paths, it now slices on `#type`