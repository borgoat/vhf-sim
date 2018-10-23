include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION "${PROJECT_VERSION}")
set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VENDOR "Mario Konrad")
set(CPACK_PACKAGE_CONTACT "Mario Konrad <mario.konrad@gmx.net>")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://mariokonrad.github.io/vhf-sim/")
set(CPACK_PACAKGE_DESCRIPTION "Martitime Radio Simulator")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Martitime Radio Simulator for Practicing")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/README.md")
set(CPACK_PACKAGE_ICON "${CMAKE_SOURCE_DIR}/src/vhf/icons\\\\vhf-main.bmp")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_MONOLITHIC_INSTALL 1)
set(CPACK_PACKAGE_EXECUTABLES "vhf-sim" "vhf-sim")
set(CPACK_STRIP_FILES true)

if(WIN32)
	include(CPack.win32.local)
elseif(UNIX)
	include(CPack.linux.local)
endif()

include(CPack)
