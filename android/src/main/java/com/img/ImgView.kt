package com.img

import android.annotation.SuppressLint
import android.content.Context
import android.net.Uri
import com.facebook.drawee.backends.pipeline.Fresco
import com.facebook.drawee.drawable.ScalingUtils
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.react.bridge.ReadableMap


class ImgView(context: Context?) : SimpleDraweeView(context) {

  init {
    Fresco.initialize(context)
  }

  @SuppressLint("DiscouragedApi")
  fun setNativeProps(nativeProps: ReadableMap){
    val src = nativeProps.getString("src");
    val local = nativeProps.getBoolean("local");

    if(BuildConfig.DEBUG){
      val uriAddress = Uri.parse(src)
      this.setImageURI(uriAddress);
    }else{
      if(local){
        val resourceId: Int =  context.resources.getIdentifier(src, "drawable", context.packageName)
        this.setActualImageResource(resourceId)
      }else{
        this.setImageURI(src);
      }
    }
    this.hierarchy.actualImageScaleType = ScalingUtils.ScaleType.FIT_CENTER
  }
}
