#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
interface ${NAME}Manager {

    fun addListener(listener: Listener)
    
    fun removeListener(listener: Listener)
    
    interface Listener {
    
        fun onChanged()
    }
}
