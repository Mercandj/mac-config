#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
class ${NAME}Presenter(
    private val screen: ${NAME}Contract.Screen
) : ${NAME}Contract.UserAction {

    override fun onAttachedToWindow() {
        updateScreen()
    }

    override fun onDetachedFromWindow() {
    }

    private fun updateScreen() {
    }
}
