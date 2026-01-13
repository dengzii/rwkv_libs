cmake_minimum_required(VERSION 3.10)

set(PROJECT_NAME "rwkv_libs")
project(${PROJECT_NAME} LANGUAGES CXX)

set(rwkv_libs_bundled_libraries
  "${CMAKE_CURRENT_SOURCE_DIR}/librwkv_mobile-linux-x86_64.so"
  "${CMAKE_CURRENT_SOURCE_DIR}/librwkv_mobile-linux-aarch64.so"
  PARENT_SCOPE
)