#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup

setup(name='python-magic-bin',
      description='File type identification using libmagic binary package',
      author='Adam Hupp, Julian David Rath, Spencer Hanson',
      author_email='adam@hupp.org, julian.rath@gmail.com, spencer.hanson@swimlane.com',
      url="http://github.com/julian-r/python-magic",
      version='0.4.14',
      package_data={
            'magic': ['libmagic/*.dll', 'libmagic/*.dylib', 'libmagic/*.mgc', 'libmagic/*.so*', 'libmagic/*.la']
      },
      zip_safe=False,
      packages=['magic'],
      long_description="""This module uses ctypes to access the libmagic file type
identification library.  It makes use of the local magic database and
supports both textual and MIME-type output.
""",
      keywords="mime magic file binary",
      license="MIT",
      test_suite='test',
      classifiers=[
          'Intended Audience :: Developers',
          'License :: OSI Approved :: MIT License',
          'Programming Language :: Python',
          'Programming Language :: Python :: 2',
          'Programming Language :: Python :: 3',
      ],
)