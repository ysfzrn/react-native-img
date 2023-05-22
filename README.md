# react-native-img

This project was created to search for an answer to the question of how to implement a custom image in React Native.

Although the Image component within React Native fulfills most of your needs, if you specifically want to use an asset from a local or remote URL when creating a library, this project can be helpful to you.

## Usage

```js
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
```

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
