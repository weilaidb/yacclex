#include <iostream>
#include <string>
#include <ffmpeg/avformat.h>
#include <ffmpeg/avcodec.h>
#include <ffmpeg/avutils.h>
#include <stdio.h>
#include <stdlib.h>
#include "hello.h"
#include "../hello.h"
#include "space.h"
#include "../a/b/c/c/c//cspace.h"

// 测试文件：sample.cpp
class Point
{
 int x;
 int y;
 int GetX();
 int GetY();
};

class Rect
{
 int x;
 int y;
 int w;
 int h;
 int GetX();
 int GetY();
 int GetW();
 int GetH();
};

class Wrapper
{
 class Inner1{};
 class Inner2{
 class InnerInner1{float f;};
 class InnerInner2{};
 std::string name;
 };
 bool sex;
};
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////// 编译并运行过程
D:\home\blog\lexyacc>make
flex lex.l
bison -d yacc.y
g++ lex.yy.c yacc.tab.c -o lexyacc


