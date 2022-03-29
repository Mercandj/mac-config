#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.widget.FrameLayout
import androidx.annotation.IdRes

#end
#parse("File Header.java")
class ${NAME}View @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr) {

    private val view = inflateLayout(R.layout.main_layout_to_replace_view)
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
    
    private fun createScreen() = object : ${NAME}ViewContract.Screen {
    }
    
    private fun createUserAction(): ${NAME}ViewContract.UserAction {
        if (isInEditMode) {
            return object : ${NAME}ViewContract.UserAction {
                override fun onAttachedToWindow() {}
                override fun onDetachedFromWindow() {}
            }
        }
        return ${NAME}ViewPresenter(
            createScreen()
        )
    }
}
