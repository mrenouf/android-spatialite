#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.61)
AC_INIT(libspatialite-amalgamation, 2.3.1, a.furieri@lqt.it)
AC_LANG(C)

AM_INIT_AUTOMAKE
AM_MAINTAINER_MODE

# Checks for header files.
AC_CHECK_HEADERS(stdlib.h,, [AC_MSG_ERROR([cannot find stdlib.h, bailing out])])
AC_CHECK_HEADERS(stdio.h,, [AC_MSG_ERROR([cannot find stdio.h, bailing out])])
AC_CHECK_HEADERS(string.h,, [AC_MSG_ERROR([cannot find string.h, bailing out])])
AC_CHECK_HEADERS(memory.h,, [AC_MSG_ERROR([cannot find memory.h, bailing out])])
AC_CHECK_HEADERS(math.h,, [AC_MSG_ERROR([cannot find math.h, bailing out])])
AC_CHECK_HEADERS(float.h,, [AC_MSG_ERROR([cannot find float.h, bailing out])])
AC_CHECK_HEADERS(fcntl.h,, [AC_MSG_ERROR([cannot find fcntl.h, bailing out])])
AC_CHECK_HEADERS(inttypes.h,, [AC_MSG_ERROR([cannot find inttypes.h, bailing out])])
AC_CHECK_HEADERS(stddef.h,, [AC_MSG_ERROR([cannot find stddef.h, bailing out])])
AC_CHECK_HEADERS(stdint.h,, [AC_MSG_ERROR([cannot find stdint.h, bailing out])])
AC_CHECK_HEADERS(sys/time.h,, [AC_MSG_ERROR([cannot find sys/time.h, bailing out])])
AC_CHECK_HEADERS(unistd.h,, [AC_MSG_ERROR([cannot find unistd.h, bailing out])])


# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_LIBTOOL_WIN32_DLL
AC_PROG_LIBTOOL

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_TYPE_OFF_T
AC_TYPE_SIZE_T
AC_HEADER_TIME
AC_STRUCT_TM
AC_C_VOLATILE

# Checks for library functions.
AC_FUNC_LSTAT
AC_FUNC_LSTAT_FOLLOWS_SLASHED_SYMLINK
AC_FUNC_MEMCMP
AC_FUNC_STAT
AC_FUNC_STRFTIME
AC_CHECK_FUNCS([memset sqrt strcasecmp strerror strncasecmp strstr fdatasync ftruncate getcwd gettimeofday localtime_r memmove strerror])

AC_CONFIG_FILES([Makefile \
		headers/Makefile \
		spatialite.pc])

#-----------------------------------------------------------------------
#   --enable-math-functions
#
AC_ARG_ENABLE(mathsql, [AS_HELP_STRING(
  [--enable-mathsql], [enables SQL math functions [default=yes]])],
  [], [mathsql=yes])
if test x"$enable_mathsql" != "xno"; then
  OMIT_MATHSQL_FLAGS=
else
  OMIT_MATHSQL_FLAGS=-DOMIT_MATHSQL
fi
AC_SUBST(OMIT_MATHSQL_FLAGS)
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
#   --with-proj-include
#
AC_ARG_WITH(proj-include,
  [  --with-proj-include=DIR search for PROJ.4 headers in DIR],
  proj_include="$withval", proj_include="")
if test "$proj_include" == "" ; then
  PROJ_INCLUDE=""
else
  PROJ_INCLUDE="-I$proj_include"
fi
AC_SUBST(PROJ_INCLUDE)
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
#   --with-proj-lib
#
AC_ARG_WITH(proj-lib,
  [  --with-proj-lib=DIR     search for PROJ.4 lib in DIR],
  proj_lib="$withval", proj_lib="")
if test "$proj_lib" == "" ; then
  PROJ_LIB_LA="/usr/local/lib/libproj.la"
else
  PROJ_LIB_LA="$proj_lib/libproj.la"
fi
AC_SUBST(PROJ_LIB_LA)
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
#   --enable-proj
#
AC_ARG_ENABLE(proj, [AS_HELP_STRING(
  [--enable-proj], [enables PROJ.4 inclusion [default=yes]])],
  [], [proj=yes])
if test x"$enable_proj" != "xno"; then
  OMIT_PROJ_FLAGS=
else
  OMIT_PROJ_FLAGS=-DOMIT_PROJ
  PROJ_LIB_LA=
  AC_SUBST(PROJ_LIB_LA)
fi
AC_SUBST(OMIT_PROJ_FLAGS)
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
#   --with-geos-include
#
AC_ARG_WITH(geos-include,
  [  --with-geos-include=DIR search for GEOS headers in DIR],
  geos_include="$withval", geos_include="")
if test "$geos_include" == "" ; then
  GEOS_INCLUDE=""
else
  GEOS_INCLUDE="-I$geos_include"
fi
AC_SUBST(GEOS_INCLUDE)
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
#   --with-geos-lib
#
AC_ARG_WITH(geos-lib,
  [  --with-geos-lib=DIR     search for GEOS lib in DIR],
  geos_lib="$withval", geos_lib="")
if test "$geos_lib" == "" ; then
  GEOS_LIB_CLA="/usr/local/lib/libgeos_c.la"
  GEOS_LIB_LA="/usr/local/lib/libgeos.la"
else
  GEOS_LIB_CLA="$geos_lib/libgeos_c.la"
  GEOS_LIB_LA="$geos_lib/libgeos.la"
fi
AC_SUBST(GEOS_LIB_CLA)
AC_SUBST(GEOS_LIB_LA)
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
#   --enable-geos
#
AC_ARG_ENABLE(geos, [AS_HELP_STRING(
  [--enable-geos], [enables GEOS inclusion [default=yes]])],
  [], [geos=yes])
if test x"$enable_geos" != "xno"; then
  OMIT_GEOS_FLAGS=
else
  OMIT_GEOS_FLAGS=-DOMIT_GEOS
  GEOS_LIB_CLA=
  GEOS_LIB_LA=
  AC_SUBST(GEOS_LIB_CLA)
  AC_SUBST(GEOS_LIB_LA)
fi
AC_SUBST(OMIT_GEOS_FLAGS)
#-----------------------------------------------------------------------

# Checking for MinGW
AM_CONDITIONAL([MINGW], [test "$target_alias" = "mingw32"])
# Checking for Mac OsX
AM_CONDITIONAL([MACOSX], [test "$target_alias" = "macosx"])

AC_OUTPUT
