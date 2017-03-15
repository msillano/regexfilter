General purpose filter, replaces regular expressions (regex) in the input stream, in block or line modes. 
It works like egrep and sed, or like Perl regex, but it is simpler and it can be used on Unix/Linux and Windows O.S.

Precondition:
*input: standard input (allows piping) or file.
*output: standard output or file
*regex: all pairs regex/replacement are in a file.

It works line by line or on whole input. macro expansions in replacement strings.
The sample DAT files transfoms files in G-code (for 3D printers) dialects for different applications:
      Inkscape to CAMotics
      Inkscape to 3DRAG printer
      Stickfonts to CAMotics
      Stickfonts to 3DRAG printer

Here more information on regex
      
Version:
4.02 10/11/25 (c) M.Sillano 2006-2011
Filters the input stream, via java.String.replaceAll(), using regex/replacement pairs.
All regex/replacement pairs are stored in an ASCII file, and they are all processed in sequence for every input line or for the whole input in block mode.

use

 
 Usage:     regexfilter -h|-?|--help|--version",
            regexfilter [-bx] [datFile] [-i=FILE] [-u=FILE]",
 
            Filters the inputFile, using regex/replacement pairs in datFile.
            options:  -h|-?|--help    display this help and exit.
                      --version       print version and exit.
                      -b              block mode. Default = line mode.
                      -x              datFile in XML mode. Default = plain text.
            -i=FILE, --input=FILE     the text input file.
                                      Default = standard input.
            -o=FILE, --output=FILE    the text output file.
                                      Default = standard output.
            datFile:                  regex/replacement pairs file. Default = ./regexfilter.dat.
                                      if not found, builds an example file. 