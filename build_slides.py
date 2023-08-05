#!/usr/bin/env python
import os

def read_file(fname):
    with open(fname, 'r') as f:
        content = f.read()
    return content

slides = [read_file('./slides/' + slide) for slide in sorted(os.listdir('./slides/'))]

content = read_file('./styles.md')
content += '\n\n'
content += '\n\n---\n\n'.join(
    slides
)

with open('index.md', 'w') as f:
    f.write(content)
