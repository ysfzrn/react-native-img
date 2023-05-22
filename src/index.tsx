import React from 'react';
import ImgViewComponent from './ImgViewNativeComponent';
import type { ViewProps } from 'react-native';
const resolveAssetSource = require('react-native/Libraries/Image/resolveAssetSource');

interface ImgViewProps extends ViewProps {
  source?: any;
}

export const ImgView = (props: ImgViewProps) => {
  const { source } = props || {};

  let resolvedAsset = '';

  if (source?.uri) {
    resolvedAsset = source?.uri;
  } else {
    resolvedAsset = resolveAssetSource(source)?.uri;
  }

  return (
    <ImgViewComponent
      nativeProps={{ src: resolvedAsset, local: source?.uri ? false : true }}
      {...props}
    />
  );
};
