--
-- zlib compression library
--

project "zlib"
	kind "StaticLib"
	language "C"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files {
		"zconf.h"
		"zlib.h"
		"adler32.c"
		"compress.c"
		"crc32.c"
		"crc32.h"
		"deflate.c"
		"deflate.h"
		"gzclose.c"
		"gzguts.h"
		"gzlib.c"
		"gzread.c"
		"gzwrite.c"
		"infback.c"
		"inffast.c"
		"inffast.h"
		"inffixed.h"
		"inflate.c"
		"inflate.h"
		"inftrees.c"
		"inftrees.h"
		"trees.c"
		"trees.h"
		"uncompr.c"
		"zutil.c"
		"zutil.h"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
