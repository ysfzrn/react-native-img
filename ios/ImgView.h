// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef ImgViewNativeComponent_h
#define ImgViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface ImgView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* ImgViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
