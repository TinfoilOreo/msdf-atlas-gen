project "msdf-atlas-gen"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"
        
    targetdir "bin/%{cfg.buildcfg}"
    objdir "bin-int/%{cfg.buildcfg}"
    
    defines {
        "_CRT_SECURE_NO_WARNINGS"
    }

    includedirs {
        "%{IncludeDir.MsdfGen}",
        "%{IncludeDir.MsdfAtlasGen}",
        "artery-font-format"
    }
        
    files {
        "msdf-atlas-gen/**.cpp",
        "msdf-atlas-gen/**.hpp",
        "msdf-atlas-gen/**.h",
        "msdf-gen/core/**.cpp",
        "msdf-gen/core/**.hpp",
        "msdf-gen/core/**.h"
    }

    links {
        "msdfgen"
    }
    
    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        runtime "Release"
        optimize "On"
        symbols "Off"
