#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
interface ${FEATURE_CAMEL_CASE}Contract {

    interface UserAction {
        
        fun onAttachedToWindow()
        
        fun onDetachedFromWindow()
        
        fun onViewModelSet(viewModel: ${FEATURE_CAMEL_CASE}Model)
    }
   
   interface Screen
}
