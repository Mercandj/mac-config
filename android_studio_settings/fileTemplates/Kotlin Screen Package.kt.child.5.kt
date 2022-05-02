#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
interface ${FEATURE_CAMEL_CASE}Manager {

    fun getViewModel(): ${FEATURE_CAMEL_CASE}Model?

    fun setViewModel(viewModel: ${FEATURE_CAMEL_CASE}Model?)

    fun addListener(listener: Listener)

    fun removeListener(listener: Listener)
    
    interface Listener {
    
        fun onChanged()
    }
}
