project "msdf-atlas-gen"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"
        
    targetdir "bin/%{cfg.buildcfg}"
    objdir "bin-int/%{cfg.buildcfg}"
    
    defines {
        "_CRT_SECURE_NO_WARNINGS"
    }

    includedirs {
        "%{IncludeDir.MsdfGen}",
        "%{IncludeDir.MsdfAtlasGen}"
    }
        
    files {
        "msdf-atlas-gen/**.cpp",
        "msdf-atlas-gen/**.hpp",
        "msdf-atlas-gen/**.h",
        "msdf-gen/msdf-gen/**.cpp",
        "msdf-gen/msdf-gen/**.hpp",
        "msdf-gen/msdf-gen/**.h",
    }
    
    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "On"
