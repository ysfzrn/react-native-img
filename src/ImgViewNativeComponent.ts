import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type { ViewProps } from 'react-native';

interface SourceProps {
  src?: string;
  local?: boolean;
}

interface NativeProps extends ViewProps {
  nativeProps?: SourceProps;
}

export default codegenNativeComponent<NativeProps>('ImgView');
