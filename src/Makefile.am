# Additional defined flags for extra warnings.
# CFLAGS += -malign-double -Wall -fno-strict-aliasing -Wextra -Wmissing-prototypes -Wmissing-declarations -Wredundant-decls

# Note the ordering (we haven't defined the dependencies too strongly).
SUBDIRS = Missions/Generated Game ThirdParty SDL Ships obj

bin_PROGRAMS = homeworld

HW_LIBS = \
   ./Game/libhw_Game.a \
   ./SDL/libhw_SDL.a \
   ./Ships/libhw_Ships.a \
   ./Missions/Generated/libhw_Generated.a \
   ./ThirdParty/LZSS/libhw_LZSS.a \
   ./ThirdParty/CRC/libhw_CRC.a \
   ./ThirdParty/JPG/libhw_JPG.a

if OLD_SOUND
SUBDIRS += obj
HW_LIBS += ./obj/libhw_Sound.a
endif

DEP_LIBS = \
   ./Game/libhw_Game.a \
   ./SDL/libhw_SDL.a \
   ./Ships/libhw_Ships.a \
   ./Missions/Generated/libhw_Generated.a \
   ./ThirdParty/LZSS/libhw_LZSS.a

homeworld_LIBTOOLFLAGS = --preserve-dup-deps
if PLATFORM_WIN32
homeworld_LDADD = $(HW_LIBS) $(DEP_LIBS) @SDL_LIBS@ $(GL_LIBS) $(MOVIE_LIBS) $(NET_LIBS)
else
homeworld_LDADD = $(HW_LIBS) $(DEP_LIBS) -lX11 @SDL_LIBS@ $(GL_LIBS) $(MOVIE_LIBS) $(NET_LIBS)
endif
homeworld_LDFLAGS = /usr/lib32/libX11.so.1 /usr/lib32/libXext.a /usr/lib32/libXt.a /usr/lib32/libXm.so.1 /usr/lib32/libXpm.so.1 -Wl,--allow-shlib-undefined -Wl,-rpath-link=/usr/lib32 -Wl,-rpath=/usr/lib32:/usr/sgug/lib32 -Wl,--as-needed

