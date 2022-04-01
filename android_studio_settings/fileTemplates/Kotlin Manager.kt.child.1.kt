#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
class ${NAME}ManagerImpl : ${NAME}Manager {

    private val listeners = ArrayList<${NAME}Manager.Listener>()

    override fun addListener(listener: ${NAME}Manager.Listener) {
        if (listeners.contains(listener)) {
            return
        }
        listeners.add(listener)
    }
    
    override fun removeListener(listener: ${NAME}Manager.Listener) {
        listeners.remove(listener)
    }
}
