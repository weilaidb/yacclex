QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp


#flex/bison sources
FLEXSOURCES += \
    ldir/frame.l


BISONSOURCES += \
    ydir/frame.y




#bison
bison.input = BISONSOURCES
bison.output = $$PWD/${QMAKE_FILE_BASE}_yacc.cpp
bison.commands = bison -d -l -o ${QMAKE_FILE_OUT} -p ${QMAKE_FILE_BASE} ${QMAKE_FILE_IN}
bison.clean = $$$$PWD/${QMAKE_FILE_BASE}_yacc.cpp $$$$PWD/${QMAKE_FILE_BASE}_yacc.hpp
bison.variable_out = SOURCES
bison.CONFIG = target_predeps
QMAKE_EXTRA_COMPILERS += bison



#flex
flex.input = FLEXSOURCES
flex.output = $$PWD/${QMAKE_FILE_BASE}_lex.cpp
flex.commands = flex -P${QMAKE_FILE_BASE} -o${QMAKE_FILE_OUT} ${QMAKE_FILE_IN}
flex.clean = ${QMAKE_FILE_OUT}
flex.variable_out = SOURCES
flex.CONFIG = target_predeps
QMAKE_EXTRA_COMPILERS += flex



# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
