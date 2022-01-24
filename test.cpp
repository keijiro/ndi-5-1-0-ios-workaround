#include <cstdio>
#include <Processing.NDI.Lib.h>

namespace Processing {
    namespace NDI {
        namespace Plugins {
            namespace Lib {
                namespace memory {
                    namespace xml {
                        bool validate_xml(char const*) { return true; }
                    }
                }
            }
        }
    }
}

int main()
{
	NDIlib_recv_destroy(NDIlib_recv_create_v3());
    return 0;
}
