#!/usr/bin/env python
# -*- coding: utf-8 -*-


import sys
import subprocess

from jinja2 import Template
from jinja2 import Undefined



def text_btw(text, start, end):
    try:
        num_s = text.index( start ) + len( start )
        text = text[num_s:]
        num_e = text.find(end)
        return text[:num_e].decode('utf8')
    except Exception, e:
        return ""

def md_tex(md):
    proc = subprocess.Popen( ['pandoc', '-f', 'markdown', '-t', 'latex'],stdout=subprocess.PIPE, stdin=subprocess.PIPE)
    proc.stdin.write(md.encode('utf8'))
    proc.stdin.close()
    out = proc.stdout.read().decode('utf8')
    proc.wait()
    return out


filename=sys.argv[1]

readme = open(filename, 'r').read()


name = text_btw(readme, "<!--- Name:", ":")
author = text_btw(readme, "<!--- Author:", ":")
email = text_btw(readme, "<!--- AuthorEmail:", ":")
LongName = text_btw(readme, "<!--- LongName:", ":")
lead = text_btw(readme, "<!--- lead --->", "<!--- Elead --->")
Description = text_btw(readme, "<!--- Description --->", "<!--- EDescription --->")
Content = text_btw(readme, "<!--- Content --->", "<!--- EContent --->")


proc = subprocess.Popen( ['pandoc', '-f', 'markdown', '-t', 'latex'],stdout=subprocess.PIPE, stdin=subprocess.PIPE)
proc.stdin.write(lead.encode('utf8'))
proc.stdin.close()
lead = proc.stdout.read().decode('utf8')
print lead
proc.wait()



Description = md_tex(Description)
Content = md_tex(Content)



print name, author, email, LongName
print lead
print Description
print Content


t = Template(open('template.tex').read().decode('utf8'))
out = t.render(name = name, author = author, LongName = LongName, email = email, lead=lead, Description = Description, Content = Content)



f = open('out.tex', 'w')
f.write(out.encode('utf8'))
f.close()
subprocess.Popen(['pdflatex', 'out.tex', 'out.pdf'])