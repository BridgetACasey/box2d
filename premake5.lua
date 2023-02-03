project "Box2D"
    kind "StaticLib"
    language "C++"

	targetdir ("build/" .. outputdir .. "/%{prj.name}")
    objdir ("build-int/" .. outputdir .. "/%{prj.name}")

	filter "system:windows"
        systemversion "latest"
        staticruntime "on"

	includedirs
    {
        "include",
        "src"
    }
        
    files
	{
        "include/**.h",
        "src/**.cpp"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"