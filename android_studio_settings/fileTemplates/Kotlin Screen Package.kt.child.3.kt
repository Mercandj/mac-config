#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
interface ${NAME}Manager {

    fun getViewModel(): ${NAME}Model?

    fun setViewModel(viewModel: ${NAME}Model?)

    fun addListener(listener: Listener)

    fun removeListener(listener: Listener)
    
    interface Listener {
    
        fun onChanged()
    }
}
