#import "ImgView.h"

#import <React/RCTConversions.h>
#import <RCTTypeSafety/RCTConvertHelpers.h>

#import <react/renderer/components/RNImgViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNImgViewSpec/EventEmitters.h>
#import <react/renderer/components/RNImgViewSpec/Props.h>
#import <react/renderer/components/RNImgViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "react-native-img-Swift.h"

using namespace facebook::react;

@interface ImgView () <RCTImgViewViewProtocol>

@end

@implementation ImgView {
    ImgViewComponent * _view;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<ImgViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const ImgViewProps>();
    _props = defaultProps;

    _view = [[ImgViewComponent alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<ImgViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<ImgViewProps const>(props);
    
    if (oldViewProps.nativeProps.src != newViewProps.nativeProps.src) {
        BOOL *local = new BOOL;
        *local = newViewProps.nativeProps.local;
        NSString *src = RCTNSStringFromString(newViewProps.nativeProps.src);
        [_view setSrc:src];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> ImgViewCls(void)
{
    return ImgView.class;
}

@end
