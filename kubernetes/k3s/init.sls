# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import data as d with context %}
{%- set formula = d.formula %}

include:
  - {{ '.binary' if d.k3s.pkg.use_upstream_binary else '.script' }}
  - .config