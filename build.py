"""Rebuild index.html from template.html and vocab.json."""
from pathlib import Path

here = Path(__file__).parent
template = (here / "template.html").read_text(encoding="utf-8")
vocab = (here / "vocab.json").read_text(encoding="utf-8")
(here / "index.html").write_text(template.replace("__VOCAB__", vocab), encoding="utf-8")
print("Built index.html")
