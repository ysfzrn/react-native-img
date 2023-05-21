package com.img

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.uimanager.annotations.ReactProp
import com.facebook.react.viewmanagers.ImgViewManagerInterface
import com.facebook.react.viewmanagers.ImgViewManagerDelegate
import com.facebook.soloader.SoLoader

@ReactModule(name = ImgViewManager.NAME)
class ImgViewManager : SimpleViewManager<ImgView>(),
  ImgViewManagerInterface<ImgView> {
  private val mDelegate: ViewManagerDelegate<ImgView>

  init {
    mDelegate = ImgViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<ImgView>? {
    return mDelegate
  }

  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): ImgView {
    return ImgView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: ImgView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "ImgView"

    init {
      if (BuildConfig.CODEGEN_MODULE_REGISTRATION != null) {
        SoLoader.loadLibrary(BuildConfig.CODEGEN_MODULE_REGISTRATION)
      }
    }
  }
}
