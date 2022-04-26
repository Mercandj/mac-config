#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
data class ${NAME}Model(
    val id: String
)