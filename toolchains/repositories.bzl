def bazel_toolchains_repositories():
    org_chromium_clang_mac()
    org_chromium_clang_linux_x64()
    org_chromium_sysroot_linux_x64()
    org_chromium_binutils_linux_x64()
    org_chromium_libcxx()
    org_chromium_libcxxabi()

def org_chromium_clang_mac():
    native.new_http_archive(
        name = 'org_chromium_clang_mac',
        build_file = str(Label('//build_files:org_chromium_clang_mac.BUILD')),
        sha256 = '4f0aca6ec66281be94c3045550ae15a73befa59c32396112abda0030ef22e9b6',
        urls = ['http://172.16.52.102/clang/mac/clang-318667-1.tgz'],
    )

def org_chromium_clang_linux_x64():
    native.new_http_archive(
        name = 'org_chromium_clang_linux_x64',
        build_file = str(Label('//build_files:org_chromium_clang_linux_x64.BUILD')),
        sha256 = 'e63e5fe3ec8eee4779812cd16aae0ddaf1256d2e8e93cdd5914a3d3e01355dc1',
        urls = ['http://172.16.52.102/clang/linux/clang-318667-1.tgz'],
    )

def org_chromium_sysroot_linux_x64():
    native.new_http_archive(
        name = 'org_chromium_sysroot_linux_x64',
        build_file = str(Label('//build_files:org_chromium_sysroot_linux_x64.BUILD')),
        sha256 = '84656a6df544ecef62169cfe3ab6e41bb4346a62d3ba2a045dc5a0a2ecea94a3',
        urls = ['http://172.16.52.102/clang/linux/debian_stretch_amd64_sysroot.tar.xz'],
    )

def org_chromium_binutils_linux_x64():
    native.new_http_archive(
        name = 'org_chromium_binutils_linux_x64',
        build_file = str(Label('//build_files:org_chromium_binutils_linux_x64.BUILD')),
        sha256 = '24c3df44af5bd377c701ee31b9b704f2ea23456f20e63652c8235a10d7cf1be7',
        type = 'tar.bz2',
        urls = ['http://172.16.52.102/clang/linux/binutils.tar.bz2'],
    )

def org_chromium_libcxx():
    native.new_http_archive(
        name = 'org_chromium_libcxx',
        build_file = str(Label('//build_files:org_chromium_libcxx.BUILD')),
        sha256 = '0d86a5ad81ada4a1c80e81a69ae99116d7d0452c85f414d01899500bc4c1eeb8',
        urls = ['http://172.16.52.102/clang/linux/libcxx-f56f1bba1ade4a408d403ff050d50e837bae47df.tar.gz'],
    )

def org_chromium_libcxxabi():
    native.new_http_archive(
        name = 'org_chromium_libcxxabi',
        build_file = str(Label('//build_files:org_chromium_libcxxabi.BUILD')),
        sha256 = '27fb5d944665ad2985110916fffab079aa07bf13191286587516442d52efd235',
        urls = ['http://172.16.52.102/clang/linux/libcxxabi-05ba3281482304ae8de31123a594972a495da06d.tar.gz'],
    )
