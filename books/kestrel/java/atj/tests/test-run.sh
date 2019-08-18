#!/bin/bash

################################################################################

# Java Library -- ATJ -- Tests -- Execution
#
# Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
#
# License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
#
# Author: Alessandro Coglio (coglio@kestrel.edu)

################################################################################

# This file runs the tests for the Java code generated by ATJ,
# collecting and printing time measurements for some of them.

# The -Xss1G option to the JVM sets the stack size to 1GB.
# This is generally needed to avoid a stack overflow,
# because AIJ's recursive evaluation uses much more stack space
# than typical Java programs.

# This file assumes that OpenJDK Java 12 is in the path,
# but it may well work with other Java versions or implementations.

################################################################################

# stop on error:
set -e

# test the factorial function:
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G FactDeepTests 1
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G FactShallowTests 1

# test the Fibonacci function:
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G FibDeepTests 1
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G FibShallowTests 1

# test the ABNF parser:
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G \
     TestABNFDeep 1 abnf.txt json.txt uri.txt http.txt imf.txt smtp.txt imap.txt
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G \
     TestABNFShallow 1 abnf.txt json.txt uri.txt http.txt imf.txt smtp.txt imap.txt

# test AIJ's native implementations of ACL2 functions:
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G NativeDeepTests
java -cp ../../aij/java/out/artifacts/AIJ_jar/AIJ.jar:. -Xss1G NativeShallowTests

# printed only if all the tests succeed:
echo "" # empty line
echo "All the ATJ tests have succeeded."
