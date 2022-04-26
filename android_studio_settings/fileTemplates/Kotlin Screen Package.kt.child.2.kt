#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
class ${NAME}Presenter(
    private val screen: ${NAME}Contract.Screen,
    private val m${NAME}Manager: ${NAME}Manager
) : ${NAME}Contract.UserAction {

    private val m${NAME}Listener = create${NAME}Listener()

    override fun onAttachedToWindow() {
        m${NAME}Manager.addListener(m${NAME}Listener)
        updateScreen()
    }

    override fun onDetachedFromWindow() {
        m${NAME}Manager.removeListener(m${NAME}Listener)
    }

    private fun updateScreen() {
        updateVisibility()
    }
 
    private fun updateVisibility() {
        screen.setVisibility(createVisibility())
    }
 
    private fun createVisibility(): Boolean {
        return m${NAME}Manager.getViewModel() != null
    }
    
    private fun create${NAME}Listener() = object: ${NAME}Manager.Listener {
        override fun onChanged() {
            updateVisibility()
        }
    }
}
