pybind11_add_module(
    _z5py
        z5py.cxx
        attributes.cxx
        dataset.cxx
        factory.cxx
        handles.cxx
        util.cxx
)

target_link_libraries(_z5py
    PUBLIC
    ${COMPRESSION_LIBRARIES}
    ${FILESYSTEM_LIBRARIES}
    ${CLOUD_LIBRARIES}
    ${CMAKE_THREAD_LIBS_INIT}
)

message(STATUS "xtensor include dirs: ${xtensor_INCLUDE_DIRS}")
message(STATUS "xtensor-python include dirs: ${xtensor-python_INCLUDE_DIRS}")
message(STATUS "nlohmann_json include dirs: ${nlohmann_json_INCLUDE_DIRS}")

target_include_directories(_z5py
    PUBLIC
    ${xtensor_INCLUDE_DIRS}
    ${xtensor-python_INCLUDE_DIRS}
    ${nlohmann_json_INCLUDE_DIRS}
    )
