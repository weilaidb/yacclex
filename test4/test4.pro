TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp





INCLUDEPATH = base


#flex/bison sources
FLEXSOURCES += \
    ldir/frame.l


BISONSOURCES += \
    ydir/frame.y




#bison
bison.input = BISONSOURCES
bison.output = $$PWD/${QMAKE_FILE_BASE}_yacc.c
bison.commands = bison -d -l -o ${QMAKE_FILE_OUT} -p ${QMAKE_FILE_BASE} ${QMAKE_FILE_IN}
bison.clean = $$$$PWD/${QMAKE_FILE_BASE}_yacc.c $$$$PWD/${QMAKE_FILE_BASE}_yacc.hpp
bison.variable_out = SOURCES
bison.CONFIG = target_predeps
QMAKE_EXTRA_COMPILERS += bison



#flex
flex.input = FLEXSOURCES
flex.output = $$PWD/${QMAKE_FILE_BASE}_lex.c
flex.commands = flex -P${QMAKE_FILE_BASE} -o${QMAKE_FILE_OUT} ${QMAKE_FILE_IN}
flex.clean = ${QMAKE_FILE_OUT}
flex.variable_out = SOURCES
flex.CONFIG = target_predeps
QMAKE_EXTRA_COMPILERS += flex



# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    .gitignore

HEADERS += \
    base/pub_def.h \
    frame_yacc.h
