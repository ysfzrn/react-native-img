import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { ImgView } from 'react-native-img';

const Basketball = require('./assets/basketball.webp');

export default function App() {
  return (
    <View style={styles.container}>
      <ImgView style={styles.image} source={Basketball} />
      <ImgView
        style={styles.image}
        source={{
          uri: 'https://reactnative.dev/img/logo-og.png',
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  image: {
    width: 300,
    height: 300,
    marginBottom: 20,
  },
});
