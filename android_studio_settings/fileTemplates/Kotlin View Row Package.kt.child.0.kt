#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
interface ${NAME}Contract {

    interface UserAction {
        
        fun onAttachedToWindow()
        
        fun onDetachedFromWindow()
        
        fun onViewModelSet(viewModel: ${NAME}Model)
    }
   
   interface Screen
}
