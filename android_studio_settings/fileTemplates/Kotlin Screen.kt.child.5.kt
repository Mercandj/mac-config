#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
class ${NAME}ViewPresenter(
    private val screen: ${NAME}ViewContract.Screen,
    private val toRename${NAME}ViewManager: ${NAME}ViewManager
) : ${NAME}ViewContract.UserAction {

    private val toRename${NAME}ViewListener = create${NAME}ViewListener()

    override fun onAttachedToWindow() {
        toRename${NAME}ViewManager.addListener(toRename${NAME}ViewListener)
        updateScreen()
    }

    override fun onDetachedFromWindow() {
        toRename${NAME}ViewManager.removeListener(toRename${NAME}ViewListener)
    }

    private fun updateScreen() {
        updateVisibility()
    }
 
    private fun updateVisibility() {
        screen.setVisibility(createVisibility())
    }
 
    private fun createVisibility(): Boolean {
        return toRename${NAME}ViewManager.getViewModel() != null
    }
    
    private fun create${NAME}ViewListener() = object: ${NAME}ViewManager.Listener {
        override fun onChanged() {
            updateVisibility()
        }
    }
}
