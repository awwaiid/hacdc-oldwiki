## Makefiles for command line development

I found the built-in editor with Inform7 somewhat frustrating, so I
wrote a set of Makefile rules to allow me to do command line compiling
while I edited the source files in my editor of choice. The build
process is quite odd; first the Inform7 front-end generates I6 code from
the .ni file, which is then compiled into z8 files. For test playing I
used frotz.

    #!/usr/bin/make

    # For OSX; for Linux i386 it is somewhere in /usr/local/bin
    INFORM_PATH=/Applications/Inform.app/Contents/Resources/

    I7_BIN=$(INFORM_PATH)/Compilers/ni
    I7_LIB=$(INFORM_PATH)/Inform7/Extensions

    I6_BIN=$(INFORM_PATH)/Compilers/inform-6.31-biplatform
    I6_LIB=$(INFORM_PATH)/Library/Natural

    ZCODE_VERSION=8
    EXT=z$(ZCODE_VERSION)

    ifdef DEBUG
    DEBUG_OPTS=D
    endif

    #
    # The arguments to the Inform6 compiler set:
    #       -E2SDwv$(ZCODE_VERSION)x \
    # E2    Macintosh MPW-style error messages
    # S     Strict error-checking at runtime
    # w     Disable warning messages
    # v8    Generate z-code version 8
    # x     Print # for every 100 lines compiled
    #
    # Optionally, if debugging is requested:
    #
    # D     Insert "Constant DEBUG;" automatically
    #
    %.$(EXT): %.ni
            TMPDIR=/tmp/inform7-$$$$
            mkdir -p "$$TMPDIR"/{Build,Source,Index}
            cp "$<" "$$TMPDIR"/Source/story.ni

            "$(I7_BIN)" \
                    --rules "$(I7_LIB)" \
                    --extension=$(EXT) \
                    --package "$$TMPDIR" \

            "$(I6_BIN)" \
                    -E2Swv$(ZCODE_VERSION)$(DEBUG_OPTS)x \
                    +"$(I6_LIB)" \
                    "$$TMPDIR/Build/auto.inf" \
                    -o "$@" \

--- [Hudson](User:Hudson) 19:59, 14 December 2008 (UTC)
