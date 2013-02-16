dnl Copyright 2013 Mo McRoberts.
dnl
dnl  Licensed under the Apache License, Version 2.0 (the "License");
dnl  you may not use this file except in compliance with the License.
dnl  You may obtain a copy of the License at
dnl
dnl      http://www.apache.org/licenses/LICENSE-2.0
dnl
dnl  Unless required by applicable law or agreed to in writing, software
dnl  distributed under the License is distributed on an "AS IS" BASIS,
dnl  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
dnl  See the License for the specific language governing permissions and
dnl  limitations under the License.
dnl
AC_DEFUN([LIBSQL_CHECK_UUID],[
AC_CHECK_FUNC([uuid_compare],,[
	AC_CHECK_LIB([uuid],[uuid_compare],,[
		AC_MSG_ERROR([cannot find libuuid which is required to build libsql])
		])
	])
])