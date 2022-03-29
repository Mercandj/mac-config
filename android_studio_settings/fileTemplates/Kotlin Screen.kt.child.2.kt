#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
class ${NAME}ViewPresenter(
    private val screen: ${NAME}ViewContract.Screen
) : ${NAME}ViewContract.UserAction {

    override fun onAttachedToWindow() {
        updateScreen()
    }

    override fun onDetachedFromWindow() {
    }

    private fun updateScreen() {
    }
}
