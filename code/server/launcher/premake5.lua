	project "DuplicityMain"
		language "C++"
		kind "ConsoleApp"

		links { "Shared", "CitiCore" }

		add_dependencies { 'vendor:fmtlib' }

		includedirs
		{
			"../../client/citicore/",
			"include/"
		}

		files
		{
			"**.cpp", "**.h", "../../client/common/Error.cpp"
		}

		pchsource "src/StdInc.cpp"
		pchheader "StdInc.h"

		targetname "FXServer"
