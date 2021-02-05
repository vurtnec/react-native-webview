package com.reactnativecommunity.webview.events

import com.facebook.react.bridge.WritableMap

/**
 * Event emitted when shouldOverrideUrlLoading is called
 */
class FGTopShouldStartLoadWithRequestEvent(viewId: Int, private val mData: WritableMap, isRedirect: Boolean) : TopShouldStartLoadWithRequestEvent(viewId, mData) {
  init {
    if(isRedirect) {
      mData.putString("navigationType", "other")
    }else {
      mData.putString("navigationType", "click")
    }
  }
}
