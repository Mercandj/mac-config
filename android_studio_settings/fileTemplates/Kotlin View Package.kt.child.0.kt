#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE}Presenter(
    private val screen: ${FEATURE_CAMEL_CASE}Contract.Screen
) : ${FEATURE_CAMEL_CASE}Contract.UserAction {

    override fun onAttachedToWindow() {
        updateScreen()
    }

    override fun onDetachedFromWindow() {
    }

    private fun updateScreen() {
    }
}
