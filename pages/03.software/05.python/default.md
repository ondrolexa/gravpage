---
title: Python
---

# Python

Python is a versatile and useful programming language; It's general purpose and allows several different styles of programming (object oriented, procedural, functional etc.), it's a great scripting language, it runs interactively so it's fast to develop and experiment with, it's probably the best "glue" language, has an enormous collection of add-on modules, it's relatively easy to learn, it has a large user base, and it's easy to install and get started with. ... so, lets install and get started!

## Why use Anaconda Python?

Python is Free open-source software and so are the vast majority of modules and tools for it. If you use Linux or MacOS then you will have a default Python installed and you can use it. For Windows you have to install something. There are several options for setting up a nice Python development environment but the setup that is becoming "standard" is Continuum Analytics' Anaconda Python. It's well done and has a great tool for managing module packages and build environments called ``conda``.

## How to Install Anaconda Python

I'll go through the Linux and Windows install. (It is also simple to install on MacOS but I won't discus it here). After the simple install instructions I'll give you a couple of pointers and links to get you started using your new Python.

### Linux

I'm using Ubuntu 16.04 but the install procedure should be the same for any Linux version or distribution. The install is via a shell archive script. It's trivial to install.

1. Point your web browser at the [Continuum downloads page](https://www.continuum.io/downloads). Download the latest version of the shell archive. I recommend to use Python 3.x version. You can use any Python version you want when you setup environments for your projects. The conda tool will get the version you want for a specific project automatically.
2. Now you just need to run the install script. It will unpack the archive and set things up for you.
```
bash Anaconda3-4.3.1-Linux-x86_64.sh
```

You will be asked to read a license agreement and then it will offer you a default install location and option to change that. After it finishes installing it will offer to append your PATH variable with the anaconda3/bin directory. You can exit the term session you were using and start another and you will have the new PATH variable set. You are done with the install!

### Windows 10
The Windows install is similar to the Linux install but instead of a shell archive it's a self extracting installer exe file.

1. Point your web browser at the the [Continuum downloads page](https://www.continuum.io/downloads). Download the latest version of the Windows installer.
2. After downloading just double click the installer exe and follow the prompts. It will by default install in the directory Anaconda3 in your home directory and will offer to add the anaconda bin directory to your PATH variable. Same as it did with the Linux install.

## Getting started with Anaconda Python

Your initial interaction with anaconda Python will be through the terminal. Now that the anaconda directory is on your PATH, Python 3 should be your default. Try it:
```
ondro@petro2:~$ python
Python 3.5.4 |Continuum Analytics, Inc.| (default, Aug 14 2017, 13:26:58) 
[GCC 4.4.7 20120313 (Red Hat 4.4.7-1)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print("Hello Pyhton")
Hello Pyhton
>>> 
```
On Windows you will have new start menu items from the anaconda Python install. If you open the app "Anaconda Prompt" you can do the same thing I just did on Linux:
```
(C:\Users\ondro\Anaconda3) C:\Users\ondro>Python
Python 3.6.0 |Anaconda 4.3.1 (64-bit)| (default, Dec 23 2016, 11:57:41) [MSC v.1900 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> print("Hello Python")
Hello Python
>>>
```

## Jupyter notebook

Working from the command-line is fine but there is a very powerful and popular browser based notebook interface [Jupyter](http://jupyter.org/). This may become your main tool for interacting with Python. Jupyter evolved from ipython and is now a surprisingly useful interface for many languages (not just Python).

> With Jupyter you can have documentation in Markdown, nice mathematical equations with LaTeX, graphs, plots, images, executable code and output all in the same document. There is even book that was written using Jupyter! ( "Introduction to Machine Learning with Python", by Sarah Guido; Andreas C. Müller O'Reilly Media, Inc., 2016 )

To start Jupyter just type `jupyter notebook` in Linux or click on the `Jupyter Notebook icon` in Windows. You will want to spend some time reading the documentation and experimenting with Jupyter.