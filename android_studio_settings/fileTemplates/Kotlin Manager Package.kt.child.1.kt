#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
class ${NAME}Impl : ${NAME} {

    private val listeners = ArrayList<${NAME}.Listener>()

    override fun addListener(listener: ${NAME}.Listener) {
        if (listeners.contains(listener)) {
            return
        }
        listeners.add(listener)
    }
    
    override fun removeListener(listener: ${NAME}.Listener) {
        listeners.remove(listener)
    }
}
