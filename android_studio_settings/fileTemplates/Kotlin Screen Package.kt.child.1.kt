#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
class ${NAME}Module {

    fun create${NAME}Manager(): ${NAME}Manager {
        return ${NAME}ManagerImpl()
    }
}