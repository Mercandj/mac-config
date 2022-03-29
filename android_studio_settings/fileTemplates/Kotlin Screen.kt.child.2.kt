#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
interface ${NAME}ViewManager {

    fun getViewModel(): ${NAME}ViewModel?

    fun setViewModel(viewModel: ${NAME}ViewModel?)

    fun addListener(listener: Listener)

    fun removeListener(listener: Listener)
    
    interface Listener {
    
        fun onChanged()
    }
}
