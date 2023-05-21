#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"

@interface ImgViewManager : RCTViewManager
@end

@implementation ImgViewManager

RCT_EXPORT_MODULE(ImgView)

- (UIView *)view
{
  return [[UIView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(color, NSString)

@end
