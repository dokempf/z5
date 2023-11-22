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
