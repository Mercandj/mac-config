#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE}Presenter(
    private val screen: ${FEATURE_CAMEL_CASE}Contract.Screen,
    private val m${FEATURE_CAMEL_CASE}Manager: ${FEATURE_CAMEL_CASE}Manager
) : ${FEATURE_CAMEL_CASE}Contract.UserAction {

    private val m${FEATURE_CAMEL_CASE}Listener = create${FEATURE_CAMEL_CASE}Listener()

    override fun onAttachedToWindow() {
        m${FEATURE_CAMEL_CASE}Manager.addListener(m${FEATURE_CAMEL_CASE}Listener)
        updateScreen()
    }

    override fun onDetachedFromWindow() {
        m${FEATURE_CAMEL_CASE}Manager.removeListener(m${FEATURE_CAMEL_CASE}Listener)
    }

    private fun updateScreen() {
        updateVisibility()
    }
 
    private fun updateVisibility() {
        screen.setVisibility(createVisibility())
    }
 
    private fun createVisibility(): Boolean {
        return m${FEATURE_CAMEL_CASE}Manager.getViewModel() != null
    }
    
    private fun create${FEATURE_CAMEL_CASE}Listener() = object: ${FEATURE_CAMEL_CASE}Manager.Listener {
        override fun onChanged() {
            updateVisibility()
        }
    }
}
