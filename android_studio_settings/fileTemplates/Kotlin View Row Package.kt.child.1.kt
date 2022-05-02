#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${NAME}

#end
#parse("File Header.java")
#set ($FEATURE_CAMEL_CASE = ${StringUtils.removeAndHump(${NAME}, "_")})
class ${FEATURE_CAMEL_CASE}Presenter(
    private val screen: ${FEATURE_CAMEL_CASE}Contract.Screen
) : ${FEATURE_CAMEL_CASE}Contract.UserAction {

    private var viewModel: ${FEATURE_CAMEL_CASE}Model? = null

    override fun onAttachedToWindow() {
        updateScreen()
    }

    override fun onDetachedFromWindow() {
    }
    
    override fun onViewModelSet(viewModel: ${FEATURE_CAMEL_CASE}Model) {
        if (this.viewModel == viewModel) {
            return
        }
        this.viewModel = viewModel
        updateViewModel()
    }

    private fun updateScreen() {
        updateViewModel()
    }
    
    private fun updateViewModel() {
    }
}
