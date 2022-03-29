#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
class ${NAME}ViewModule {

    fun create${NAME}ViewManager(): ${NAME}ViewManager {
        return ${NAME}ViewManagerImpl()
    }
}
