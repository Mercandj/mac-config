#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.widget.FrameLayout
import androidx.annotation.IdRes
import ${PACKAGE_NAME}.R
import com.mercandalli.android.sdk.view.ViewExtension.inflateLayout

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${NAME} @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr) {

    private val view = inflateLayout(R.layout.${FEATURE})
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
    
    private fun createScreen() = object : ${NAME}Contract.Screen {
        override fun setVisibility(visible: Boolean) {
            visibility = visible.visibleToVisibleOrGone()
        }
    }
    
    private fun createUserAction(): ${NAME}Contract.UserAction {
        if (isInEditMode) {
            return object : ${NAME}Contract.UserAction {
                override fun onAttachedToWindow() {}
                override fun onDetachedFromWindow() {}
            }
        }
        return ${NAME}Presenter(
            createScreen(),
            Graph.get${NAME}Manager()
        )
    }
}
