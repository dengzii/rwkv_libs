
cmake_minimum_required(VERSION 3.10)

set(PROJECT_NAME "rwkv_libs")
project(${PROJECT_NAME} LANGUAGES CXX)

set(rwkv_libs_bundled_libraries
        "${CMAKE_CURRENT_SOURCE_DIR}/rwkv_mobile.dll"
        "${CMAKE_CURRENT_SOURCE_DIR}/rwkv_mobile-arm64.dll"
        "${CMAKE_CURRENT_SOURCE_DIR}/libomp140.aarch64.dll"
        PARENT_SCOPE
)