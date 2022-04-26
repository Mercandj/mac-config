#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME}.${FEATURE}

#end
#parse("File Header.java")
class ${NAME}Presenter(
    private val screen: ${NAME}Contract.Screen
) : ${NAME}Contract.UserAction {

    private var viewModel: ${NAME}Model? = null

    override fun onAttachedToWindow() {
        updateScreen()
    }

    override fun onDetachedFromWindow() {
    }
    
    override fun onViewModelSet(viewModel: ${NAME}Model) {
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
