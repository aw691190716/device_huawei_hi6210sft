
#include <fstream>
#include <string>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_hi6210sft.h"

void init_target_properties()
{
    char platform[PROP_VALUE_MAX];
    std::ifstream fin;
    std::string buf;
    int rc;

    rc = property_get("ro.board.platform", platform);
    if (!rc || strncmp(platform, "hi6210sft", PROP_VALUE_MAX))
        return;

    fin.open("/sys/firmware/devicetree/base/hisi,product_name");
    while (getline(fin, buf))
        if ((buf.find("ALICE_TLO2") != std::string::npos) || (buf.find("ALICE_TL21") != std::string::npos) || (buf.find("ALICE_TL23") != std::string::npos))
            break;
    fin.close();

    if (buf.find("ALICE_TLO2") != std::string::npos) {
        property_set("ro.product.model", "ALE-L02");
        property_set("ro.build.description", "ALE-L02-user 6.0 HuaweiALE-L02 C190B575 release-keys");
        property_set("ro.build.fingerprint", "Huawei/ALE-L02/hwALE-H:6.0/HuaweiALE-L02/C190B575:user/release-keys");
    }
    else if (buf.find("ALICE_TL21") != std::string::npos) {
        property_set("ro.product.model", "ALE-L21");
        property_set("ro.build.description", "ALE-L21-user 6.0 HuaweiALE-L21 C432B596 release-keys");
        property_set("ro.build.fingerprint", "Huawei/ALE-L21/hwALE-H:6.0/HuaweiALE-L21/C432B596:user/release-keys");	
    }
    else if (buf.find("ALICE_TL23") != std::string::npos) {
        property_set("ro.product.model", "ALE-L23");
        property_set("ro.build.description", "ALE-L21-user 6.0 HuaweiALE-L21 C432B596 release-keys");
        property_set("ro.build.fingerprint", "Huawei/ALE-L21/hwALE-H:6.0/HuaweiALE-L21/C432B596:user/release-keys");
    }
    else {
	property_set("ro.product.model", "UNKNOWN");
    }
}
