file(GLOB_RECURSE target_sources
"${CMAKE_CURRENT_SOURCE_DIR}/User/*.c"
)
list(APPEND TARGET_REQUIRED_SRCS ${target_sources})
set(mains ${CMAKE_CURRENT_SOURCE_DIR}/User/main.c)
generate_bin()