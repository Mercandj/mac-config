#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}

#end
#parse("File Header.java")
interface ${NAME}ViewContract {

    interface UserAction {
        
        fun onAttachedToWindow()
        
        fun onDetachedFromWindow()
    }
    
    interface Screen {
    
        fun setVisibility(visible: Boolean)
    }
}
