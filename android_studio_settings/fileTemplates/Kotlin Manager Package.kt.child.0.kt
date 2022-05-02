#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE}Module {

    fun create${FEATURE_CAMEL_CASE}Manager(): ${FEATURE_CAMEL_CASE}Manager {
        return ${FEATURE_CAMEL_CASE}ManagerImpl()
    }
}
