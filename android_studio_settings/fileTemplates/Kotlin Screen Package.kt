#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.widget.FrameLayout
import androidx.annotation.IdRes
import ${PACKAGE_NAME}.R
import com.mercandalli.android.sdk.view.ViewExtension.inflateLayout
import com.mercandalli.android.sdk.view.ViewUtils.visibleToVisibleOrGone

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE} @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr) {

    private val view = inflateLayout(R.layout.${NAME})
    private val userAction by lazy { createUserAction() }
    
    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        userAction.onAttachedToWindow()
    }
    
    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        userAction.onDetachedFromWindow()
    }
    
    private fun <T : View> bind(@Suppress("SameParameterValue") @IdRes id: Int): T {
        @Suppress("RemoveExplicitTypeArguments")
        return view.findViewById<T>(id)
    }
    
    private fun createScreen() = object : ${FEATURE_CAMEL_CASE}Contract.Screen {
        override fun setVisibility(visible: Boolean) {
            visibility = visible.visibleToVisibleOrGone()
        }
    }
    
    private fun createUserAction(): ${FEATURE_CAMEL_CASE}Contract.UserAction {
        if (isInEditMode) {
            return object : ${FEATURE_CAMEL_CASE}Contract.UserAction {
                override fun onAttachedToWindow() {}
                override fun onDetachedFromWindow() {}
            }
        }
        return ${FEATURE_CAMEL_CASE}Presenter(
            createScreen(),
            Graph.get${FEATURE_CAMEL_CASE}Manager()
        )
    }
}
