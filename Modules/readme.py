#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
import subprocess

import jinja2
from jinja2 import Template
from jinja2 import Undefined
latex_jinja_env = jinja2.Environment(
    block_start_string = '\BLOCK{',
    block_end_string = '}',
    variable_start_string = '\VAR{',
    variable_end_string = '}',
    comment_start_string = '\#{',
    comment_end_string = '}',
    line_statement_prefix = '%-',
    line_comment_prefix = '%#',
    trim_blocks = True,
    autoescape = False,
    loader= jinja2.FileSystemLoader(os.path.abspath('.'))
)
#sys.setdefaultencoding('utf-8')


def text_btw(text, start, end):
    try:
        num_s = text.index( start ) + len( start )
        text = text[num_s:]
        num_e = text.find(end)
        return text[:num_e].decode('utf8')
    except Exception, e:
        return ""


def text_btw_replace(text, start, end, replace):
    try:
        print "######################################################  1"
        print text
        num_s = text.index( start )-1
        num_e = text.find(end)+len(end)
        print num_s, num_e

        text_pre = text[:num_s]
        print "###################################################### 2"
        print "PRE"
        print text_pre
        text_post= text[num_e:]
        print
        print "post"
        print text_post
        print "###################################################### 3"
        out = (text_pre+replace+text_post)
        print out
        print "###################################################### 4"

        return out
    except Exception, e:
        print e
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

leadImg = "/home/roman/repos/newMLAB/test-mlab-repos/Modules/Sensors/SHT31V01A/DOC/SRC/img/SHT31V01A_top_big.jpg"

schema  ='''
\\newpage

\\title{schema}
tady bude schema 

\\newpage
'''

Content = text_btw_replace(Content, '<!--- scheme --->', '<!--- Escheme --->', schema)


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


#t = latex_jinja_env(leader=open('template.tex').read().decode('utf8'))
t = latex_jinja_env.get_template('template.tex')
out = t.render(name = name, author = author, LongName = LongName, email = email, lead=lead, leadImg = leadImg, Description = Description, Content = Content)



f = open('out.tex', 'w')
f.write(out.encode('utf8'))
f.close()
subprocess.Popen(['pdflatex', 'out.tex', 'out.pdf'])