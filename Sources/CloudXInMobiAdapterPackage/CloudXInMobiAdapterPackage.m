#import <CloudXInMobiAdapter/CloudXInMobiAdapter.h>

@interface CloudXInMobiAdapterPackageLoader : NSObject
@end

@implementation CloudXInMobiAdapterPackageLoader

+ (void)load {
    CloudXInMobiAdapterRegister();
}

@end
