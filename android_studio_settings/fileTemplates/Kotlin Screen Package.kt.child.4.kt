#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
#set ($FEATURE_CAMEL_CASE_FIRST_LETTER = $FEATURE_CAMEL_CASE.substring(0, 1).toLowerCase())
#set ($FEATURE_CAMEL_CASE_REST = $FEATURE_CAMEL_CASE.substring(1))
#set ($FEATURE_CAMEL_CASE_UNCAPITALIZED = ${FEATURE_CAMEL_CASE_FIRST_LETTER} + ${FEATURE_CAMEL_CASE_REST})
class ${FEATURE_CAMEL_CASE}Presenter(
    private val screen: ${FEATURE_CAMEL_CASE}Contract.Screen,
    private val ${FEATURE_CAMEL_CASE_UNCAPITALIZED}Manager: ${FEATURE_CAMEL_CASE}Manager
) : ${FEATURE_CAMEL_CASE}Contract.UserAction {

    private val ${FEATURE_CAMEL_CASE_UNCAPITALIZED}Listener = create${FEATURE_CAMEL_CASE}Listener()

    override fun onAttachedToWindow() {
        ${FEATURE_CAMEL_CASE_UNCAPITALIZED}Manager.addListener(${FEATURE_CAMEL_CASE_UNCAPITALIZED}Listener)
        updateScreen()
    }

    override fun onDetachedFromWindow() {
        ${FEATURE_CAMEL_CASE_UNCAPITALIZED}Manager.removeListener(${FEATURE_CAMEL_CASE_UNCAPITALIZED}Listener)
    }

    private fun updateScreen() {
        updateVisibility()
    }
 
    private fun updateVisibility() {
        screen.setVisibility(createVisibility())
    }
 
    private fun createVisibility(): Boolean {
        return ${FEATURE_CAMEL_CASE_UNCAPITALIZED}Manager.getViewModel() != null
    }
    
    private fun create${FEATURE_CAMEL_CASE}Listener() = object: ${FEATURE_CAMEL_CASE}Manager.Listener {
        override fun onChanged() {
            updateVisibility()
        }
    }
}
